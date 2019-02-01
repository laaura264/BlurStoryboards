//
//  ViewController.swift
//  BlurStoryboards
//
//  Created by Laura Arranz on 01/02/2019.
//  Copyright © 2019 Laura Arranz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var lblVibrancy: UILabel!
    @IBOutlet weak var segmented: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Crear el efecto blur a la imagen
        let blurEffect = UIBlurEffect(style: .light)
        let blurView = UIVisualEffectView(effect: blurEffect)
        blurView.frame = imgView.bounds //Para que sea de igual tamaño que la imagen
        imgView.addSubview(blurView)
        
        //Crear el efecto vibrancy a la etiqueta
        let vibrancyEffect = UIVibrancyEffect(blurEffect: blurEffect)
        let vibrancyView = UIVisualEffectView(effect: vibrancyEffect)
        vibrancyView.frame = imgView.bounds
        vibrancyView.contentView.addSubview(lblVibrancy)
        vibrancyView.contentView.addSubview(segmented)
        
        blurView.contentView.addSubview(vibrancyView)
        
    }


}

