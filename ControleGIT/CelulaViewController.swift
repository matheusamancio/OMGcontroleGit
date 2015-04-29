//
//  CelulaViewController.swift
//  ControleGIT
//
//  Created by Matheus Amancio Seixeiro on 4/28/15.
//  Copyright (c) 2015 Orleans Klaus. All rights reserved.
//

import UIKit

class CelulaViewController: UIViewController {

    @IBOutlet weak var label1: UILabel!
    
    var height = UIScreen.mainScreen().bounds.size.height/2
    var width = UIScreen.mainScreen().bounds.size.width/2
    var tituloLabel = String()
    var celulaClicada = NSIndexPath()
    var arrayMedalhas = ["bronze1","bronze2","bronz3","prata1","prata2","prata3","ouro1","ouro2","ouro3"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var altura = 200
        var largura = 200
        var i = 0
        for (index, element) in enumerate(arrayMedalhas){
        var label = UILabel(frame: CGRectMake(0, 0, 200, 21))
        label.center = CGPointMake(CGFloat(largura) ,CGFloat(altura) )
        label.textAlignment = NSTextAlignment.Left
        label.text = arrayMedalhas[i]
        self.view.addSubview(label)
            i++
            altura = altura + 20
        }
        label1.text = tituloLabel

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func BotaoVoltar(sender: AnyObject) {
            dismissViewControllerAnimated(true, completion: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}