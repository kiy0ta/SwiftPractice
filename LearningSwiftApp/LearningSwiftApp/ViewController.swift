//
//  ViewController.swift
//  LearningSwiftApp
//
//  Created by 清田武史 on 2019/11/28.
//  Copyright © 2019 KIYOTA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var allText:String=""
    let correctText:String="var sumNumber :Int = 1+10 print ( \" \\ ( sumNumber ) \" ) "
    
    @IBOutlet weak var inputArea: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func cancelButton(_ sender: Any) {
        inputArea.text=""
    }
    @IBAction func okButton(_ sender: Any) {
        allText=inputArea.text
        if(allText==correctText){
            inputArea.text="せいかい！"
        }else{
            inputArea.text="ざんねん！"
        }
    }
    @IBAction func printButton(_ sender: Any) {
        inputText("print")
    }
    @IBAction func leftKakko(_ sender: Any) {
        inputText("(")
    }
    @IBAction func numberButton(_ sender: Any) {
        inputText("1+10")
    }
    @IBAction func slashButton(_ sender: Any) {
         inputText("\\")
    }
    @IBAction func equalButton(_ sender: Any) {
         inputText("=")
    }
    @IBAction func vButton(_ sender: Any) {
         inputText("var")
    }
    @IBAction func intButton(_ sender: Any) {
        inputText(":Int")
    }
    @IBAction func rightButton(_ sender: Any) {
         inputText(")")
    }
    @IBAction func sumNumberButton(_ sender: Any) {
        inputText("sumNumber")
    }
    @IBAction func quotationButton(_ sender: Any) {
        inputText("\"")
    }
    func inputText(_ text:String){
        let text=inputArea.text!+text+" "
        inputArea.text="\(text)"
    }
}

