//
//  DataIF.swift
//  MasterDetail
//
//  Created by dicass on 2021/07/15.
//

import UIKit

class DataIF: UIViewController {

    var data: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("data :", data ?? "No Data Found")
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
