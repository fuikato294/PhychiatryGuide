//
//  ViewController.swift
//  PhychiatryGuide
//
//  Created by fumitaka katou on 2021/07/03.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var backgroundLabel: UILabel!

    // CollectionViewControllerから渡される色のデータ
    var receiveColor: UIColor = UIColor.black
    var receiveColorName: String = "black"

    override func viewDidLoad() {
        super.viewDidLoad()
        // 背景の色を渡された色にする
        backgroundLabel.backgroundColor = receiveColor
        // NavigationItemと呼ばれる一番上のバーに色の名前を入れる
        self.navigationItem.title = receiveColorName
    }
}
