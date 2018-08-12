//
//  ViewController.swift
//  WebDataRead
//
//  Created by 402-07 on 2018. 8. 11..
//  Copyright © 2018년 moonbc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var imageView: UIImageView?
    
    var tv:UITextView?
//    var fileMgr: NSFileManager = NSFileManager.defaultManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var url = URL(string: "https://store.storeimages.cdn-apple.com/8755/as-images.apple.com/is/image/AppleInc/aos/published/images/m/bp/mbp13touch/space/mbp13touch-space-select-201807_GEO_KR?wid=1808&hei=1680&fmt=jpeg&qlt=80&.v=1530049939303")
        
        var data = try! Data(contentsOf: url!)
        
        let image = UIImage(data: data)
        

        
        //이미지 뷰를 만들어서 이미지 출력
        imageView  = UIImageView(frame: CGRect(x: 0, y: 100, width: 360, height: 320))
        
        imageView?.image = image
        
        self.view.addSubview(imageView!)
        
        
        url = URL(string: "https://www.google.com")
        data = try! Data(contentsOf: url!)
        
        let googleString = NSString(data: data, encoding: String.Encoding.utf8.rawValue)
        
        let str = googleString as? String
        
        
        tv = UITextView(frame: CGRect(x: 0, y: 420, width: 360, height: 400))
        
        tv?.text = str
        self.view.addSubview(tv!)
        
        
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


