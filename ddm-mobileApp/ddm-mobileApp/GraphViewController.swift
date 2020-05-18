//
//  GraphViewController.swift
//  ddm-mobileApp
//
//  Created by alexandre gimeno on 16/05/2020.
//  Copyright © 2020 alexandre gimeno. All rights reserved.
//

import UIKit

import AWSAppSync

class GraphViewController: UIViewController {
    
    //Reference AppSync client
    var appSyncClient: AWSAppSyncClient?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        super.viewDidLoad()
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appSyncClient = appDelegate.appSyncClient
        

        // Do any additional setup after loading the view.
    }
    
    @IBAction func runMutationButton(_ sender: Any) {
        runMutation()
    }
    
    @IBAction func runQueryButton(_ sender: Any) {
        runQuery()
    }
    
    @IBAction func runSuscribeButton(_ sender: Any) {
        subscribe()
    }
    
    
    
    
    func runMutation(){
        let mutationInput = CreateTodoInput(name: "Use AppSync", description:"Realtime and Offline")
        appSyncClient?.perform(mutation: CreateTodoMutation(input: mutationInput)) { [weak self] (result, error) in
            // ... do whatever error checking or processing you wish here
            
            if let error = error as? AWSAppSyncClientError {
                print("Error occurred: \(error.localizedDescription )")
            }
            if let resultError = result?.errors {
                print("Error saving the item on server: \(resultError)")
                return
            }
            
            self?.runQuery()
        }
    }
    func runQuery(){
        appSyncClient?.fetch(query: ListTodosQuery(), cachePolicy: .returnCacheDataAndFetch) {(result, error) in
            if error != nil {
                print(error?.localizedDescription ?? "")
                return
            }
            print("Query complete.")
            result?.data?.listTodos?.items!.forEach { print(($0?.name)! + " " + ($0?.description)!) }
        }
    }
    
    var discard: Cancellable?

    func subscribe() {
        do {
            discard = try appSyncClient?.subscribe(subscription: OnCreateTodoSubscription(), resultHandler: { (result, transaction, error) in
                if let result = result {
                    print("CreateTodo subscription data:" + result.data!.onCreateTodo!.name + " " + result.data!.onCreateTodo!.description!)
                } else if let error = error {
                    print(error.localizedDescription)
                }
            })
            print("Subscribed to CreateTodo Mutations.")
            } catch {
                print("Error starting subscription.")
            }
    }
    
    // MARK: - UIPickerViewDelegate
    
    /*
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
    }
 
     */
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
