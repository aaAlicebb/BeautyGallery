//
//  ViewControllerExtension.swift
//  BeautyGallery
//
//  Created by 杨逸飞 on 16/7/10.
//  Copyright © 2016年 杨逸飞. All rights reserved.
//

import UIKit

extension ViewController: UIPickerViewDataSource{//静态
    // returns the number of 'columns' to display.选择几项，如日期：选择3项
    @available(iOS 2.0, *)
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int{
        return 1
    }
    
    // returns the # of rows in each component..
    @available(iOS 2.0, *)
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
            return beauties.count
    }
}

extension ViewController: UIPickerViewDelegate{//动态
    @available(iOS 2.0, *)
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return beauties[row]
    }
}