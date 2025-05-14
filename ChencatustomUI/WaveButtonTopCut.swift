//
//  WaveButtonTopCut.swift
//  ChencatustomUI
//
//  Created by chencatmail on 2025/5/14.
//

import UIKit

class WaveButtonTopCut: UIButton {
    override func layoutSubviews() {
        super.layoutSubviews()
        applyTopWaveMask2()
                addClickableArea()
    }

    private func applyTopWaveMask() {
        let width = self.bounds.width
        let height = self.bounds.height
        let waveHeight: CGFloat = 30
        let waveLength = width

        let path = UIBezierPath()
        
        // 👉 從左下開始
        path.move(to: CGPoint(x: 0, y: height))

//        path.addLine(to: CGPoint(x: width, y: waveHeight))  // 右上波浪起點

        // 👉 畫正弦波（上方）
        let numberOfWaves = 1
        for i in stride(from: 0, through: Int(numberOfWaves * 100), by: 1) {
            print(i)
            let x = CGFloat(i) / 100 * width
            let y = height - sin(x / waveLength * .pi) * waveHeight
            path.addLine(to: CGPoint(x: x, y: y))
        }

        // 👉 收尾到左上
//        path.addLine(to: CGPoint(x: 0, y: waveHeight))
        path.addLine(to: CGPoint(x: width, y: height))  // 右下
        path.close()

        let mask = CAShapeLayer()
        mask.path = path.cgPath
        self.layer.mask = mask
    }
    
    private func applyTopWaveMask2() {
            let width = self.bounds.width
            let height = self.bounds.height
            let waveHeight: CGFloat = 20
            let waveLength = width / 2

            let path = UIBezierPath()
            
            // 👉 從左下開始
            path.move(to: CGPoint(x: 0, y: height))
            path.addLine(to: CGPoint(x: width, y: height))  // 右下
            path.addLine(to: CGPoint(x: width, y: waveHeight))  // 右上波浪起點

            // 👉 畫正弦波（上方）
            let numberOfWaves = 2
            for i in stride(from: Int(numberOfWaves * 100), through: 0, by: -1) {
                let x = CGFloat(i) / 100 * width
                let y = sin(x / waveLength * .pi) * waveHeight
                path.addLine(to: CGPoint(x: x, y: y))
            }

            // 👉 收尾到左上
            path.addLine(to: CGPoint(x: 0, y: waveHeight))
            path.close()

            let mask = CAShapeLayer()
            mask.path = path.cgPath
            self.layer.mask = mask
        }
    
    private func addClickableArea() {
            let width = self.bounds.width
            let height = self.bounds.height
            let waveHeight: CGFloat = 20
            
            // 創建一個透明的區域（非波浪區域）
            let clickableArea = UIButton(type: .system)
            clickableArea.frame = CGRect(x: 0, y: waveHeight, width: width, height: height - waveHeight)
            clickableArea.backgroundColor = .clear
            clickableArea.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
            self.addSubview(clickableArea)
        }

        @objc private func buttonTapped() {
            print("按鈕點擊！")
            // 這裡可以執行你需要的操作
        }
}
