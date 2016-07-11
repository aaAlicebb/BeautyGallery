//
//  GalleryViewController.swift
//  BeautyGallery
//
//  Created by 杨逸飞 on 16/7/10.
//  Copyright © 2016年 杨逸飞. All rights reserved.
//

import UIKit
import Social

class GalleryViewController: UIViewController {
    
    @IBOutlet weak var beautyImage: UIImageView!
    var imageName: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if let name = imageName{
            beautyImage.image = UIImage(named: name)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func shareTapped(sender: AnyObject) {
        let controller:SLComposeViewController = SLComposeViewController(forServiceType:SLServiceTypeTwitter)
        controller.setInitialText("一起来玩女神画廊app吧，就在GitHub上")
        controller.addImage(beautyImage.image)
        self.presentViewController(controller, animated: true, completion: nil)
    }
    
    
}

