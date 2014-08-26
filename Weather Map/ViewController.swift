//
//  ViewController.swift
//  Weather Map
//
//  Created by Isaac Rosenberg on 8/9/14.
//  Copyright (c) 2014 Isaac Rosenberg. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {
    
    override func loadView() {
        super.loadView()
        
        let contentview = UIView()
        contentview.backgroundColor = UIColor.whiteColor()
        self.view = contentview
        
        let centerview = MKMapView()
        centerview.setTranslatesAutoresizingMaskIntoConstraints(false)
        self.view.addSubview(centerview)
        
        let label = UILabel()
        label.setTranslatesAutoresizingMaskIntoConstraints(false)
        label.text = "hello world"
        
        self.view.addConstraint(NSLayoutConstraint(
            item: centerview,
            attribute: NSLayoutAttribute.Width,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.view,
            attribute: NSLayoutAttribute.Width,
            multiplier: 1,
            constant: 0))
        
        self.view.addConstraint(NSLayoutConstraint(
            item: centerview,
            attribute: NSLayoutAttribute.Height,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.view,
            attribute: NSLayoutAttribute.Height,
            multiplier: 0.5,
            constant: 0))
        
        self.view.addConstraint(NSLayoutConstraint(
            item: centerview,
            attribute: NSLayoutAttribute.CenterX,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.view,
            attribute: NSLayoutAttribute.CenterX,
            multiplier: 1,
            constant: 0))
        
        self.view.addConstraint(NSLayoutConstraint(
            item: centerview,
            attribute: NSLayoutAttribute.TopMargin,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.view,
            attribute: NSLayoutAttribute.TopMargin,
            multiplier: 1,
            constant: 0))

        
    }
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

