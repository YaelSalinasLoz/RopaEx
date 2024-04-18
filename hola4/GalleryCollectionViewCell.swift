//
//  GalleryCollectionViewCell.swift
//  hola4
//
//  Created by Jyaru Hernandez on 26/02/24.
//

import UIKit

class GalleryCollectionViewCell: UICollectionViewCell 
{
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var imagen: UIImageView!
    
    var myWardrobe: WardrobeSection? = nil
    
    func addWardrobe (pWardrobe:WardrobeSection)
    {
        myWardrobe=pWardrobe
        var temporalWardrobe = myWardrobe!
        label.text=temporalWardrobe.availablePieces[temporalWardrobe.currentSelection].pieceTitle
        imagen.image = UIImage(named:temporalWardrobe.availablePieces[temporalWardrobe.currentSelection].pieceName )
    }
    
    @IBAction func Next(_ sender: Any)
    {
        var temporalWardrobe = myWardrobe!
        temporalWardrobe.moveToNext()
        label.text=temporalWardrobe.availablePieces[temporalWardrobe.currentSelection].pieceTitle
        imagen.image = UIImage(named:temporalWardrobe.availablePieces[temporalWardrobe.currentSelection].pieceName )
        
    }
    
    @IBAction func Previous(_ sender: Any) 
    {
        var temporalWardrobe = myWardrobe!
        temporalWardrobe.moveToPrevious()
        label.text=temporalWardrobe.availablePieces[temporalWardrobe.currentSelection].pieceTitle
        imagen.image = UIImage(named:temporalWardrobe.availablePieces[temporalWardrobe.currentSelection].pieceName )
    }
}



