//
//  ViewController.swift
//  CanIPoop
//
//  Created by Steven Berard on 7/27/17.
//  Copyright © 2017 Event Farm. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase

class ViewController: UIViewController {

    var officeRef: DatabaseReference!

    @IBOutlet weak var upperBathroomView: UIView!
    @IBOutlet weak var lowerBathroomView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        officeRef = Database.database().reference().child("office1")

        print("\nofficeRef: \(officeRef)\n")

        officeRef.observe(.childChanged) { (snapshot: DataSnapshot) in
            print("key: \(snapshot.key), value: \(snapshot.value)")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

