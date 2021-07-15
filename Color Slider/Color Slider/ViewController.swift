//
//  ViewController.swift
//  Color Slider
//
//  Created by dicass on 2021/07/14.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        initColor()
            // viewMap: View 객체
        let tapView = UITapGestureRecognizer(target: self, action: #selector(clickColorView))
        colorView.isUserInteractionEnabled = true
        colorView.addGestureRecognizer(tapView)
        let tapRedLabel = UITapGestureRecognizer(target: self, action: #selector(clickRedLabel))
        redLabel.isUserInteractionEnabled = true
        redLabel.addGestureRecognizer(tapRedLabel)
        let tapGreLabel = UITapGestureRecognizer(target: self, action: #selector(clickGreLabel))
        greLabel.isUserInteractionEnabled = true
        greLabel.addGestureRecognizer(tapGreLabel)
        let tapBluLabel = UITapGestureRecognizer(target: self, action: #selector(clickBluLabel))
        bleLabel.isUserInteractionEnabled = true
        bleLabel.addGestureRecognizer(tapBluLabel)
        let tapAlpLabel = UITapGestureRecognizer(target: self, action: #selector(clickAlpLabel))
        alpLabel.isUserInteractionEnabled = true
        alpLabel.addGestureRecognizer(tapAlpLabel)
    }

    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greLabel: UILabel!
    @IBOutlet weak var bleLabel: UILabel!
    @IBOutlet weak var alpLabel: UILabel!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greSlider: UISlider!
    @IBOutlet weak var bluSlider: UISlider!
    @IBOutlet weak var alpSlider: UISlider!
    @IBOutlet weak var colorView: UIView!
    
    func initColor() {
        redSlider.value = Float(Int.random(in: 0...255))
        greSlider.value = Float(Int.random(in: 0...255))
        bluSlider.value = Float(Int.random(in: 0...255))
        alpSlider.value = Float(Float.random(in: 0.0...1.0))
        showColor()
    }
    @IBAction func changeSlider(_ sender: Any) {
        showColor()
    }
    @objc func clickColorView(sender: UITapGestureRecognizer) {
        initColor()
    }
    @objc func clickRedLabel(sender: UITapGestureRecognizer) {
        redSlider.value = Float(Int.random(in: 0...255))
        showColor()
    }
    @objc func clickGreLabel(sender: UITapGestureRecognizer) {
        greSlider.value = Float(Int.random(in: 0...255))
        showColor()
    }
    @objc func clickBluLabel(sender: UITapGestureRecognizer) {
        bluSlider.value = Float(Int.random(in: 0...255))
        showColor()
    }
    @objc func clickAlpLabel(sender: UITapGestureRecognizer) {
        alpSlider.value = Float.random(in: 0.0...1.0)
        showColor()
    }
    func showColor() {
        // 모든 슬라이더의 값을 읽어서 색상 반영
        let red = CGFloat(redSlider.value / 255 )
        let green = CGFloat(greSlider.value / 255 )
        let blue = CGFloat(bluSlider.value / 255)
        let alpha = CGFloat(alpSlider.value)
        colorView.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: alpha)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("prepare")
        
        
        if let detailVC = segue.destination as? Scren1 {
            detailVC.red = redSlider.value / 255
            detailVC.green = greSlider.value / 255
            detailVC.blue = bluSlider.value / 255
            detailVC.alpha = alpSlider.value
        }
        
    }
    
}

extension UISlider {
    public func addTapGesture() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(handleTap(_:)))
        addGestureRecognizer(tap)
    }

    @objc private func handleTap(_ sender: UITapGestureRecognizer) {
        let location = sender.location(in: self)
        let percent = minimumValue + Float(location.x / bounds.width) * maximumValue
        setValue(percent, animated: true)
        sendActions(for: .valueChanged)
    }
}
