//
//  ViewController.swift
//  MWCommonUtils
//
//  Created by 王萌 on 2019/10/31.
//  Copyright © 2019 MENGWANG. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //没用单例, 只做测试功能
        let util = CommonUtils()

        /*
         
         添加水印主要原理是利用UIColor类的一个方法:UIColor.init(patternImage: UIImage) 把图片变成颜色.
         该方法会把图片平铺变成一个颜色实体.
         添加显式水印,只需要修改CommonUtils类中
         getImageFromText(_ text: String)方法中的label.textColor属性即可
         添加隐式水印, 需要将label.textColor设置为UIColor(red: 0, green: 0, blue: 0, alpha: 0.01)
         隐式水印的好处是, 肉眼看不出水印, 如果有用户截图之后传播, 需要追溯图片来源时, 可以通过 PS 的混色模式处理后，隐形水印就显示出来了
         具体处理方式是: 1.在原图上图层添加全黑图层. 2.全黑图层选择『颜色加深』
         可参考https://blog.csdn.net/weixin_34307464/article/details/91411950
         
        */
        self.view.backgroundColor = UIColor.init(patternImage: util.getImageFromText("teststs"))
        
    }


}

