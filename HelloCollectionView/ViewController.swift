//
//  ViewController.swift
//  HelloCollectionView
//
//  Created by 申潤五 on 2019/11/30.
//  Copyright © 2019 申潤五. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {

    
    @IBOutlet weak var myCC: UICollectionView!
    
    var images:[UIImage?] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        images = [
            UIImage(named: "png1"),
            UIImage(named: "png2"),
            UIImage(named: "png3"),
            UIImage(named: "png4"),
            UIImage(named: "png5"),
        ]
        myCC.delegate = self
        myCC.dataSource = self
        
        let screenSize = UIScreen.main.bounds.size
        
        let layout = UICollectionViewFlowLayout()
        
        layout.sectionInset = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
        
        layout.minimumLineSpacing = 10
        
        let side = screenSize.width / 3 - 10
        
        layout.itemSize = CGSize(width: side, height: side)
        
        myCC.setCollectionViewLayout(layout, animated: false)
        
        
    }
    
    //MARK: CollectionView Delegate
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ccCell", for: indexPath) as! MyCell
        cell.backgroundColor = UIColor.red
        return cell
    }
    
    
}

