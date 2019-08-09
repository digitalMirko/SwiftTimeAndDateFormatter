//
//  ViewController.swift
//  Time and Date Formatter
//
//  Created by Mirko Cukich on 8/8/19.
//  Copyright © 2019 Digital Mirko. All rights reserved.
//
//  Swift Time and Date Formatter Demo - Demo 6 of 30


import UIKit

class ViewController: UIViewController {
    // time and date labels from top to bottom used
    @IBOutlet weak var timeDate01Label: UILabel!
    @IBOutlet weak var timeDate02Label: UILabel!
    @IBOutlet weak var timeDate03Label: UILabel!
    @IBOutlet weak var timeDate04Label: UILabel!
    @IBOutlet weak var timeDate05Label: UILabel!
    @IBOutlet weak var timeDate06Label: UILabel!
    @IBOutlet weak var timeDate07Label: UILabel!
    @IBOutlet weak var timeDate08Label: UILabel!
    @IBOutlet weak var timeDate09Label: UILabel!
    @IBOutlet weak var timeDate10Label: UILabel!
    
    // date formatter
    var dateFormatter = DateFormatter()

    override func viewDidLoad() {
        super.viewDidLoad()
        // App starts, labels blank until button clicked
        timeDate01Label.text = ""
        timeDate02Label.text = ""
        timeDate03Label.text = ""
        timeDate04Label.text = ""
        timeDate05Label.text = ""
        timeDate06Label.text = ""
        timeDate07Label.text = ""
        timeDate08Label.text = ""
        timeDate09Label.text = ""
        timeDate10Label.text = ""
    }

    @IBAction func refreshButton(_ sender: UIButton) {
        
        // Central Standard Time Zone
        dateFormatter.timeZone = TimeZone(abbreviation: "CST")
        
        // Format: Thursday, Aug 8, 2019
        dateFormatter.dateFormat = "EEEE, MMM d, yyyy"
        // updates label text to reflect format above
        timeDate01Label.text = dateFormatter.string(from: Date())
        
        // Format: 08/08/2019
        dateFormatter.dateFormat = "MM/dd/yyyy"
        // updates label text to reflect format above
        timeDate02Label.text = dateFormatter.string(from: Date())

        // Format: 08-08-2019 20:07
        dateFormatter.dateFormat = "MM-dd-yyyy HH:mm"
        // updates label text to reflect format above
        timeDate03Label.text = dateFormatter.string(from: Date())
        
        // Format: Aug 8, 8:07 PM
        dateFormatter.dateFormat = "MMM d, h:mm a"
        // updates label text to reflect format above
        timeDate04Label.text = dateFormatter.string(from: Date())
        
        // Format: August 2019
        dateFormatter.dateFormat = "MMMM yyyy"
        // updates label text to reflect format above
        timeDate05Label.text = dateFormatter.string(from: Date())
        
        // Format: Aug 8, 2019
        dateFormatter.dateFormat = "MMM d, yyyy"
        // updates label text to reflect format above
        timeDate06Label.text = dateFormatter.string(from: Date())
        
        // Format: Thu, 8 Aug 2019 20:07:20
        dateFormatter.dateFormat = "E, d MMM yyyy HH:mm:ss"
        // updates label text to reflect format above
        timeDate07Label.text = dateFormatter.string(from: Date())
        
        // Format: 2019-08-08T20:07:20
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss"
        // updates label text to reflect format above
        timeDate08Label.text = dateFormatter.string(from: Date())
        
        // 08.08.19
        dateFormatter.dateFormat = "dd.MM.yy"
        // updates label text to reflect format above
        timeDate09Label.text = dateFormatter.string(from: Date())
        
        // Format: 20:07:20.059
        dateFormatter.dateFormat = "HH:mm:ss.SSS"
        // updates label text to reflect format above
        timeDate10Label.text = dateFormatter.string(from: Date())
    }
}

