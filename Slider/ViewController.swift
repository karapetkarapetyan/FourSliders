//
//  ViewController.swift
//  Slider
//
//  Created by Karapet on 05.05.22.
//

import UIKit

class ViewController: UIViewController {
    var slider: UISlider!
    var slider2: UISlider!
    var slider3: UISlider!
    var slider4: UISlider!
    var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        initslider()
        initslider2()
        initslider3()
        initslider4()
        initlabel()
        constructHierarchy()
        activateConstraints()
    }
    
    @objc func scaleChanged(sender: UISlider) {
        self.label.font = UIFont.systemFont(ofSize: CGFloat(slider.value * 505))
    }
    
    @objc func colorChanged(sender: UISlider) {
        let redColor = CGFloat(slider2.value)
        let greenColor = CGFloat(slider3.value)
        let blueColor = CGFloat(slider4.value)
        
        self.label.textColor = UIColor(red: redColor, green: greenColor, blue: blueColor, alpha: 2.0)
    }
    
    
}

extension ViewController {
    private func initslider() {
        slider = UISlider()
        slider.addTarget(self, action: #selector(scaleChanged), for: .valueChanged)
        slider.thumbTintColor = .red
        slider.tintColor = .black
        slider.maximumTrackTintColor = .gray
        slider.translatesAutoresizingMaskIntoConstraints = false
        
    }
    
    private func initslider2() {
        slider2 = UISlider()
        slider2.addTarget(self, action: #selector(colorChanged),
                         for: .valueChanged)
        slider2.thumbTintColor = .red
        slider2.maximumTrackTintColor = .gray
        slider2.translatesAutoresizingMaskIntoConstraints = false
        
        
    }
    
    private func initslider3() {
        slider3 = UISlider()
        slider3.addTarget(self, action: #selector(colorChanged),
                         for: .valueChanged)
        slider3.thumbTintColor = .green
        slider3.maximumTrackTintColor = .gray
        slider3.translatesAutoresizingMaskIntoConstraints = false
        
        
    }
    
    private func initslider4() {
        slider4 = UISlider()
        slider4.addTarget(self, action: #selector(colorChanged),
                         for: .valueChanged)
        slider4.thumbTintColor = .blue
        slider4.maximumTrackTintColor = .gray
        slider4.translatesAutoresizingMaskIntoConstraints = false
        
        
    }
    
    private func initlabel() {
        label = UILabel()
        label.text = "Slider is GOOD"
        label.font = .boldSystemFont(ofSize: 20)
        label.translatesAutoresizingMaskIntoConstraints = false
        
    }
    
    private func constructHierarchy() {
        view.addSubview(slider)
        view.addSubview(slider2)
        view.addSubview(slider3)
        view.addSubview(slider4)
        view.addSubview(label)
        
    }
    
    private func activateConstraints() {
        NSLayoutConstraint.activate([
            slider4.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            slider4.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 40),
            slider4.widthAnchor.constraint(equalToConstant: 250),
            
            slider3.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0),
            slider3.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -10),
            slider3.widthAnchor.constraint(equalToConstant: 250),
            
            slider2.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0),
            slider2.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -60),
            slider2.widthAnchor.constraint(equalToConstant: 250),
            
            slider.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0),
            slider.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -110),
            slider.widthAnchor.constraint(equalToConstant: 250),
            
            
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0),
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -350)
            
        ])
    }
}
 
