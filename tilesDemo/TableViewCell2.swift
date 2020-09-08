//
//  TableViewCell2.swift
//  tilesDemo
//
//  Created by Mujahid on 08/09/20.
//  Copyright © 2020 Mujahid. All rights reserved.
//

import UIKit

class TableViewCell2: UITableViewCell {

    @IBOutlet weak var collectionView: UICollectionView!
    var numRow:Int = 0
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        setupCollection()
    }
    func setupCollection() {
        collectionView.dataSource = self
        collectionView.delegate = self
        self.collectionView.register(UINib(nibName: "CollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "CollectionViewCell")
        collectionView.reloadData()
    }

 
    
}
extension TableViewCell2:UICollectionViewDelegate,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return numRow
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
       let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! CollectionViewCell
        cell.btn1.setTitle("\(indexPath.row)", for: .normal)
        
       return cell
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: 80.0, height: 80.0)

    }
}
