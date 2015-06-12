//
//  ViewController.swift
//  ColorPicker
//
//  Created by xiaodong on 15/6/1.
//  Copyright (c) 2015年 xiaodong. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    @IBOutlet weak var colorWell: ColorWell!
    @IBOutlet weak var colorPicker: ColorPicker!
    @IBOutlet weak var huePicker: HuePicker!
    var pickerController:ColorPickerController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pickerController = ColorPickerController(svPickerView: colorPicker!, huePickerView: huePicker!, colorWell: colorWell!)
        pickerController?.color = UIColor.redColor()
        
        pickerController?.onColorChange = {(color, finished) in
            
            self.view.backgroundColor = color
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

