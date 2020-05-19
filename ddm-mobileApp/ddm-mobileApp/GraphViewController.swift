//
//  GraphViewController.swift
//  ddm-mobileApp
//
//  Created by alexandre gimeno on 16/05/2020.
//  Copyright © 2020 alexandre gimeno. All rights reserved.
//

import UIKit

import AWSAppSync

import Charts
import TinyConstraints

class GraphViewController: UIViewController {
    
    //Reference AppSync client
    var appSyncClient: AWSAppSyncClient?
    
    //init Chart
    lazy var lineCharView: LineChartView = {
        let chartView = LineChartView()
        
        let yAxis = chartView.leftAxis
        yAxis.setLabelCount(10, force: false)
        
        
        
        return chartView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        super.viewDidLoad()
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appSyncClient = appDelegate.appSyncClient
        // Do any additional setup after loading the view.
        
        view.addSubview(lineCharView)
        lineCharView.centerInSuperview()
        lineCharView.width(to: view)
        lineCharView.heightToWidth(of: view)
        
        setData()
    }
    
    func setData() {
        let set1 = LineChartDataSet(entries: getChartValue(name: "name"), label: "Suscribers")
        set1.mode  = .cubicBezier
        set1.drawCirclesEnabled = false
        set1.lineWidth = 3
        
        let data = LineChartData(dataSet: set1)
        data.setDrawValues(false)
        lineCharView.data = data
    }
    
    func getChartValue(name : String) -> [ChartDataEntry] {
        
        
        
        
        let values : [ChartDataEntry] = [
            ChartDataEntry(x: 0, y: 10),
            ChartDataEntry(x: 1, y: 30),
            ChartDataEntry(x: 2, y: 50),
            ChartDataEntry(x: 3, y: 10),
            ChartDataEntry(x: 4, y: 20),
        ]
        return values
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
        let mutationInput = CreateTodoInput(
            name: "Use AppSync",
            description:"Realtime and Offline",
            mpuTransX: 12,
            mpuTransY: 23,
            mpuTransZ: 180,
            mpuRotX: 62,
            mpuRotY: 15,
            mpuRotZ: 30,
            mpuTemp: 30
        )
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
        print ("start query")
        appSyncClient?.fetch(query: ListTodosQuery(), cachePolicy: .returnCacheDataAndFetch) {(result, error) in
            if error != nil {
                print(error?.localizedDescription ?? "")
                return
            }
            print("Query complete.")
            result?.data?.listTodos?.items!.forEach {
                
                print(($0?.name)! + " " + ($0?.description)!)
                

            }
            return
        }
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
