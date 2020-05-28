//
//  dataConnect.swift
//  ddm-mobileApp
//
//  Created by alexandre gimeno on 26/05/2020.
//  Copyright © 2020 alexandre gimeno. All rights reserved.
//

import AWSAppSync

//Reference AppSync client
var appSyncClient: AWSAppSyncClient?

struct graphData {
    var id :String
    var name: String
    var description : String
    var createAt :String
    var mpuTransX:  Int
    var mpuTransY: Int
    var mpuTransZ: Int
    var mpuRotX: Int
    var mpuRotY: Int
    var mpuRotZ: Int
    var mpuTemp: Int
}
var graph : Array<graphData> = Array()

// SEND DATA TO AWS
    func sendData(_ rowData: String){
        
        let data = rowData.data(using: .utf8)!
        
        do {
            if let jsonResult = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any] {
               if let tx = jsonResult["Ax"] as? String,
               let ty = jsonResult["Ay"] as? String,
               let tz = jsonResult["Az"] as? String,
               let gx = jsonResult["Gx"] as? String,
               let gy = jsonResult["Gy"] as? String,
               let gz = jsonResult["Gz"] as? String,
               let temp = jsonResult["T"] as? String {
                runMutation(tx,ty,tz,gx,gy,gz,temp)
                
               } else {
                    print("TodoInput\n")
                }
            } else {
                print("bad Json\n")
            }
        } catch let error as NSError {
            print(error)
        }
    }
    
    func runMutation(_ tx : String, _ ty : String, _ tz : String, _ gx : String, _ gy : String, _ gz : String, _ temp : String){
        print("start mutation")
        
        let mutationInput = CreateTodoInput(
           name: "Use AppSync",
           description:"Realtime and Offline",
           mpuTransX:  Int(tx),
           mpuTransY: Int(ty),
           mpuTransZ: Int(tz),
           mpuRotX: Int(gx),
           mpuRotY: Int(gy),
           mpuRotZ: Int(gz),
           mpuTemp: Int(temp)
        )
        appSyncClient?.perform(mutation: CreateTodoMutation(input: mutationInput)) { (result, error) in
            // ... do whatever error checking or processing you wish here
            
            if let error = error as? AWSAppSyncClientError {
                print("Error occurred: \(error.localizedDescription )")
            }
            if let resultError = result?.errors {
                print("Error saving the item on server: \(resultError)")
                return
            }
        }
    }

    func runQuery() -> Array<graphData> {
        print ("start query")
        appSyncClient?.fetch(query: ListTodosQuery(), cachePolicy: .returnCacheDataAndFetch) {(result, error) in
            if error != nil {
                print(error?.localizedDescription ?? "")
                return
            }
            print("Query complete.")
            
            graph.removeAll()
            result?.data?.listTodos?.items!.forEach {
                let g = graphData(
                    id : ($0?.name)!,
                    name: ($0?.description)!,
                    description : ($0?.description)!,
                    createAt : ($0?.createdAt)!,
                    mpuTransX : ($0?.mpuTransX)!,
                    mpuTransY : ($0?.mpuTransY)!,
                    mpuTransZ : ($0?.mpuTransZ)!,
                    mpuRotX : ($0?.mpuRotX)!,
                    mpuRotY : ($0?.mpuRotY)!,
                    mpuRotZ : ($0?.mpuRotZ)!,
                    mpuTemp : ($0?.mpuTemp)!)
                graph.append(g)
            
            }
            return
        }
        return graph
    }

    var discard: Cancellable?

    func subscribe() {
        do {
            discard = try appSyncClient?.subscribe(subscription: OnCreateTodoSubscription(), resultHandler: { (result, transaction, error) in
                if let result = result {
                    print("CreateTodo subscription data:" + result.data!.onCreateTodo!.name + " " + result.data!.onCreateTodo!.description!)
                    
                    //updateGraph
                    
                } else if let error = error {
                    print(error.localizedDescription)
                }
            })
            print("Subscribed to CreateTodo Mutations.")
        } catch {
            print("Error starting subscription.")
        }
    }
