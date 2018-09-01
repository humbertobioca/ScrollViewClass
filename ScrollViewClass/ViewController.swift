//
//  ViewController.swift
//  ScrollViewClass
//
//  Created by aluno on 12/05/18.
//  Copyright © 2018 aluno. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var myScrollView: UIScrollView!
    
    var imageView = UIImageView()
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return imageView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.image = #imageLiteral(resourceName: "kaneki")
        imageView.sizeToFit()
        
        myScrollView.addSubview(imageView)
        myScrollView.minimumZoomScale = 1/10;
        myScrollView.maximumZoomScale = 1.2;
        myScrollView.contentSize = imageView.frame.size
        
        myScrollView.delegate = self
       
        
        let x = imageView.frame.width / 2
        let y = imageView.frame.height / 2
        myScrollView.setContentOffset(CGPoint(x: y, y: x), animated: true)
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

