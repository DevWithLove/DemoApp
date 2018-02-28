//
//  ViewController.swift
//  DemoApp
//
//  Created by Tony Mu on 28/02/2018.
//  Copyright © 2018 Tony Mu. All rights reserved.
//

import UIKit

class RootViewController: UIViewController {

  lazy var collectionView: UICollectionView = {
    let layout = UICollectionViewFlowLayout()
    let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
    cv.backgroundColor = UIColor.red
    return cv
  }()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    
    view.addSubview(collectionView)
    
    collectionView.anchorToTop(view.topAnchor, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor)
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

