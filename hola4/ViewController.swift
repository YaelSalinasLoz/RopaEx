//
//  ViewController.swift
//  hola4
//
//  Created by Jyaru Hernandez on 26/02/24.
//


import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    @IBOutlet weak var collectionView: UICollectionView!

    var model : [WardrobeSection] = WardrobeModel().getWardroveItems()
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return model.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "WardrobeCell", for: indexPath) as! GalleryCollectionViewCell
        cell.addWardrobe(pWardrobe: model[indexPath.row])
        return cell
    }
    

    override func viewDidLoad() 
    {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
    }
}
