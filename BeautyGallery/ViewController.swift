//
//  ViewController.swift
//  BeautyGallery
//
//  Created by 杨逸飞 on 16/7/10.
//  Copyright © 2016年 杨逸飞. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var beautyPicker: UIPickerView!
    
    let beauties = ["范冰冰","李冰冰","王菲","杨幂","周迅"]
    
    let strName = ["fanbingbing","libingbing","wangfei","yangmi","zhouxun"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        beautyPicker.dataSource = self
        beautyPicker.delegate = self //该控件的dataSource和delegate均由该ViewController负责
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "GoToGallery"{
            let index = beautyPicker.selectedRowInComponent(0)
            let imageName:String? = strName[index]
            let ChinaName:String = beauties[index]
            let vc = segue.destinationViewController as! GalleryViewController
            vc.imageName = imageName
            vc.title = ChinaName
        }
    }
    @IBAction func close(segue: UIStoryboardSegue){
        print ("closed")
    }
}

