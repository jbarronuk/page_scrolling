//
//  ViewController.swift
//  pageScroll
//
//  Created by James Barron on 22/03/2017.
//  Copyright © 2017 uDemy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var images = [UIImageView]()
    
    @IBOutlet weak var scroll_view: UIScrollView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        var contentWidth: CGFloat = 0.0
        
        let scrollWidth = scroll_view.frame.size.width
        
        for x in 0...2
        {
            let image = UIImage(named: "icon\(x).png")
            let imageView = UIImageView(image: image)
            images.append(imageView)
            
            var newX: CGFloat = 0.0
            newX = scrollWidth / 2 + scrollWidth * CGFloat(x)
            contentWidth += newX
            
            scroll_view.addSubview(imageView)
            
            imageView.frame = CGRect(x: newX - 75, y: (scroll_view.frame.size.height / 2) - 75, width: 150, height: 150)
            
        }
        
        scroll_view.clipsToBounds = false
        scroll_view.contentSize = CGSize(width: contentWidth, height: view.frame.size.height)
        
    }
}

