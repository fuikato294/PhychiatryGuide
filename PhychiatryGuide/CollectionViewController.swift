//
//  CollectionViewController.swift
//  PhychiatryGuide
//
//  Created by fumitaka katou on 2021/07/03.
//

import UIKit

class CollectionViewController: UICollectionViewController  {

    // コレクションビューのcellに貼る画像の配列
    var  topicImages: [UIImage] = [
        UIImage(named: "Questionary")!,
        UIImage(named: "beginner")!,
        UIImage(named: "BeIndependent")!,
        UIImage(named: "Identification")!,
        UIImage(named: "Pension")!
    ]
    
    // cellのトピック名の配列
    let topicNames: [String] = [
        "Topic1",
        "Topic2",
        "Topic3",
        "Topic4",
        "Topic5"
    ]
    
    // ここで遷移先画面に渡すデータについて記述するが、ひとまず保留としておく。
    var giveImage: UIImage = UIImage(named: "Questionary")!
    
    let giveTopic: String = "Topic1"
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // cellの数を返す関数
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return topicImages.count
    }

    // cellに情報を入れていく関数
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        // Identifierが"CollectionViewCell"でCollectionViewCellというクラスのcellを取得
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! CollectionViewCell

        // cellのImageViewに画像を配列順に入れる
        cell.topicImageView.image = topicImages[indexPath.item]
        // Label"sellTopic"にタイトルを入れる
        cell.cellTopic.text = topicNames[indexPath.item]

        return cell
    }

    // cell選択時に呼ばれる関数
    // 画面遷移先に渡すデータをここで格納する
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        giveImage = topicImages[indexPath.item]
        _ = topicNames[indexPath.item]
        // Identifierが"Segue"のSegueを使って画面遷移する関数
        performSegue(withIdentifier: "Segue", sender: nil)
    }

}
