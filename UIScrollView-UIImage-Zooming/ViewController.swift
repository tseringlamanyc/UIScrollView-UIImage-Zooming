//
//  ViewController.swift
//  UIScrollView-UIImage-Zooming
//
//  Created by Tsering Lama on 2/3/20.
//  Copyright © 2020 Tsering Lama. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var subwayImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.delegate = self
        scrollView.maximumZoomScale = 5.0
    }
}

extension ViewController: UIScrollViewDelegate {
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return subwayImage
    }
}

