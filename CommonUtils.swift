//
//  CommonUtils.swift
//  MWCommonUtils
//
//  Created by 王萌 on 2019/10/31.
//  Copyright © 2019 MENGWANG. All rights reserved.
//

import UIKit

class CommonUtils {
    
    /// 根据给定的文字生成对应的图片
    ///
    /// - Parameter text: 要显示的文字
    /// - Returns: 生成的图片
    func getImageFromText(_ text: String) -> UIImage {
        /**
         
                   这里之所以外面再放一个UIView，是因为直接用label画图的话，旋转就不起作用了
         
                   */
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        view.backgroundColor = .white
        let label = UILabel(frame: view.bounds)
        label.backgroundColor = .clear
        //textColor暂时设置为隐形, 目前用作隐形水印用
        label.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.01)
        label.text = text
        label.transform = CGAffineTransform(rotationAngle: CGFloat(-Double.pi/4))
        view.addSubview(label)
        
        UIGraphicsBeginImageContextWithOptions(view.bounds.size, false, UIScreen.main.scale);
        view.layer.render(in: UIGraphicsGetCurrentContext()!)
        let image=UIGraphicsGetImageFromCurrentImageContext();
        
        UIGraphicsEndImageContext();
        return image!;
        
    }
}
