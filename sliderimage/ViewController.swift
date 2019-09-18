//
//  ViewController.swift
//  sliderimage
//
//  Created by COE-02 on 13/09/19.
//  Copyright © 2019 COE-02. All rights reserved.
//

import UIKit

class ViewController: UIViewController

{
    var Array = [UIImage]()
    
    @IBOutlet weak var Imageview: UIImageView!
   
    @IBOutlet weak var Slider1: UISlider!
    
    @IBAction func Slider(_ sender: UISlider)
    {
        var value = Int(sender.value)
        Imageview.image = Array[value]
    }
    @IBAction func prevbutton(_ sender: Any)
    {
        Slider1.value -= 1
        Imageview.image = Array[Int(Slider1.value)]
    }
    @IBAction func nextbutton(_ sender: Any)
    {
        Slider1.value += 1
        Imageview.image = Array[Int(Slider1.value)]
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        Array = [#imageLiteral(resourceName: "no1"),#imageLiteral(resourceName: "no2"),#imageLiteral(resourceName: "no3"),#imageLiteral(resourceName: "no4"),#imageLiteral(resourceName: "no5"),#imageLiteral(resourceName: "no6"),#imageLiteral(resourceName: "no7"),#imageLiteral(resourceName: "no8")]
        // Do any additional setup after loading the view, typically from a nib.
}

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

