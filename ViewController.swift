//
//  ViewController.swift
//  Carl
//
//  Created by Daniel Beben on 10/3/22.
//

import UIKit
import CalendarKit
import EventKit

class CalendarViewController: DayViewController {
    private let eventStore = EKEventStore()

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Calendar"// Supposed to display Calendar at the top.
        navigationController?.navigationBar.barTintColor = UIColor.green
        requestAccessToCalendar() // Requests user access to get events from calendar.
    }
    
    func requestAccessToCalendar(){
        eventStore.requestAccess(to: .event) { success, error in
        }
    }


}

