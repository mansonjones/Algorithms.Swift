//
//  ViewController.swift
//  Algorithms.Swift
//
//  Created by Manson Jones on 1/31/17.
//  Copyright © 2017 Manson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("hello world")
        
        
        var uf = WeightedQuickUnionUF(N: 10)
        uf.union(1, q: 2)
        uf.union(2, q: 3)
        print(uf.connected(1,q: 3))
        print(uf.connected(1,q: 4))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

