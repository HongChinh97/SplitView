//
//  DetailViewController.swift
//  SpitView
//
//  Created by admin on 8/11/18.
//  Copyright © 2018 admin. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController, UIScrollViewDelegate {
    
    //    var dataCity: UIImage?
    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var imageView: UIImageView!
    
    func configureView() {
        // Update the user interface for the detail item.
        if let detail = newName {
            //            if let label = detailDescriptionLabel {
            //                label.text = detail.description
            if let photo = imageView {
                photo.image = UIImage(named: detail)
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.delegate = self
        //        scrollView.minimumZoomScale = 1.0
        //        scrollView.maximumZoomScale = 10.0
        configureView()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return imageView
    }
    var newName: String? {
        didSet {
            // Update the view.
            configureView()
        }
    }
    
    
}

