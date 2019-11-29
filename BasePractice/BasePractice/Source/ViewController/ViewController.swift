//
//  ViewController.swift
//  BasePractice
//
//  Created by 清田武史 on 2019/11/29.
//  Copyright © 2019 KIYOTA. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    var imageFood :UIImageView!
    var imageNews :UIImageView!
    var imagePhoto :UIImageView!
    var foodCrickCount:Int=0
    var newsCrickCount:Int=0
    var photoCrickCount:Int=0
    @IBOutlet var collectionView: UICollectionView!
    // 同時クリック制御真理値
    var isFoodClicked=false
    var isNewsClicked=false
    var isPhotoClicked=false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUi()
    }
    
    func setUi(){
        // タブボタンの設定
        self.view.backgroundColor=Const.backColor
        imageFood = UIImageView(image: UIImage(named: Const.imageFoodOff))
        imageFood.frame=CGRect(x:50,y:800,width:30,height:30)
        imageFood.isUserInteractionEnabled = true
        imageFood.addGestureRecognizer(
            UITapGestureRecognizer(
                target: self,
                action: #selector(imageFoodViewTapped)
            )
        )
        self.view.addSubview(imageFood)
        
        imageNews = UIImageView(image: UIImage(named: Const.imageNewsOff))
        imageNews.frame=CGRect(x:200,y:800,width:30,height:30)
        imageNews.isUserInteractionEnabled = true
        imageNews.addGestureRecognizer(
            UITapGestureRecognizer(
                target: self,
                action: #selector(imageNewsViewTapped)
            )
        )
        self.view.addSubview(imageNews)

        imagePhoto = UIImageView(image: UIImage(named: Const.imagePhotoOff))
        imagePhoto.frame=CGRect(x:350,y:800,width:30,height:30)
        imagePhoto.isUserInteractionEnabled = true
        imagePhoto.addGestureRecognizer(
            UITapGestureRecognizer(
                target: self,
                action: #selector(imagePhotoViewTapped)
            )
        )
        self.view.addSubview(imagePhoto)
    }
    /// Food画像クリックメソッド
    /// - Parameter sender: <#sender description#>
    @objc func imageFoodViewTapped(_ sender: UITapGestureRecognizer) {
        if(isNewsClicked || isPhotoClicked){
            return
        }
        foodCrickCount=foodCrickCount+1
        if(foodCrickCount%2==0 ){
            imageFood.image=UIImage(named: Const.imageFoodOff)
            self.view.addSubview(imageFood)
            isFoodClicked=false
        }else{
            imageFood.image=UIImage(named: Const.imageFoodOn)
            self.view.addSubview(imageFood)
            isFoodClicked=true
        }
    }
    /// News画像クリックメソッド
    /// - Parameter sender: sender description
    @objc func imageNewsViewTapped(_ sender: UITapGestureRecognizer) {
        if(isFoodClicked || isPhotoClicked){
            return
        }
        newsCrickCount=newsCrickCount+1
        if(newsCrickCount%2==0 ){
            imageNews.image=UIImage(named: Const.imageNewsOff)
            self.view.addSubview(imageFood)
            isNewsClicked=false
        }else{
            imageNews.image=UIImage(named: Const.imageNewsOn)
            self.view.addSubview(imageFood)
            //            self.view.addSubview(collectionView)
            isNewsClicked=true
        }
    }
    /// Photo画像クリックメソッド
    /// - Parameter sender: <#sender description#>
    @objc func imagePhotoViewTapped(_ sender: UITapGestureRecognizer) {
        if(isFoodClicked || isNewsClicked){
            return
        }
        photoCrickCount=photoCrickCount+1
        if(photoCrickCount%2==0 ){
            imagePhoto.image=UIImage(named: Const.imagePhotoOff)
            self.view.addSubview(imageFood)
            isPhotoClicked=false
        }else{
            imagePhoto.image=UIImage(named: Const.imagePhotoOn)
            self.view.addSubview(imageFood)
            isPhotoClicked=true
        }
    }
    
    
    // Foodボタン→Foodリスト
    // Newsボタン→Newsリスト
    func initCollection(){
        var newsCollection = UICollectionView()
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4 // 表示するセルの数
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) // 表示するセルを登録(先程命名した"Cell")
        cell.backgroundColor = .red  // セルの色
        return cell
    }
    // Photoボタン→Photoリスト
}

