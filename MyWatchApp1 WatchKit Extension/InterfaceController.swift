//
//  InterfaceController.swift
//  MyWatchApp1 WatchKit Extension
//
//  Created by Archimedes Angeles on 20/11/19.
//  Copyright © 2019 Archimedes Angeles. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet weak var tableView: WKInterfaceTable!
    
    let tableData = ["MTS Limit File","US Trades","GL Files","KGI Portal","N2M"]
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        loadTableData()
        
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    
    func loadTableData() {
        
        tableView.setNumberOfRows(tableData.count, withRowType: "RowController")
        
        for(index, rowModel) in tableData.enumerated()
        {
            
            if let rowCon = tableView.rowController(at: index) as? RowController
            {
                rowCon.rowLabel.setText(rowModel)
            }
            
        }
    }
    
    override func table(_ table: WKInterfaceTable, didSelectRowAt rowIndex: Int) {
        print("User selected \(tableData[rowIndex])")
    }

}
