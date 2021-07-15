//
//  ViewController.swift
//  MasterDetail
//
//  Created by dicass on 2021/07/15.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("prepare")
        if let detailVC = segue.destination as? DataIF {
            detailVC.data = "Hello iOS App"
        }
    }

}

