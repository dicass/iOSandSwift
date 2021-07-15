//
//  Scren1.swift
//  Color Slider
//
//  Created by dicass on 2021/07/15.
//

import UIKit

class Scren1: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBOutlet weak var colorView: UIView!
    var red: Float = 0.0
    var green: Float = 0.0
    var blue: Float = 0.0
    var alpha: Float = 0.0
    
    override func viewWillAppear(_ animated: Bool) {
        let red = CGFloat(red)
        let green = CGFloat(green)
        let blue = CGFloat(blue)
        let alpha = CGFloat(alpha)
        colorView.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: alpha)
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
