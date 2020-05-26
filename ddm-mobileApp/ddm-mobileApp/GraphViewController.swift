//
//  GraphViewController.swift
//  ddm-mobileApp
//
//  Created by alexandre gimeno on 16/05/2020.
//  Copyright © 2020 alexandre gimeno. All rights reserved.
//

import UIKit


import Charts
import TinyConstraints

class GraphViewController: UIViewController {
    
    
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
        //runMutation()
    }
    
    @IBAction func runQueryButton(_ sender: Any) {
        runQuery()
    }
    
    @IBAction func runSuscribeButton(_ sender: Any) {
        subscribe()
    }
    
}
