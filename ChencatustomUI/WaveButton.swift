//
//  WaveButton.swift
//  ChencatustomUI
//
//  Created by chencatmail on 2025/5/14.
//

import UIKit

class WaveButton: UIButton {
    override func layoutSubviews() {
        super.layoutSubviews()
        applySineWaveMask()
    }

    private func applySineWaveMask() {
        let width = self.bounds.width
        let height = self.bounds.height
        let waveHeight: CGFloat = 20
        let waveLength = width / 2  // 控制波長（越小越密集）

        let path = UIBezierPath()
        path.move(to: .zero)

        // 左上 → 右上
        path.addLine(to: CGPoint(x: width, y: 0))

        // 右上 → 波浪底部
        path.addLine(to: CGPoint(x: width, y: height - waveHeight))

        // 畫正弦波（底部）
        let numberOfWaves = 2
        for i in 0...Int(numberOfWaves * 100) {
            let x = CGFloat(i) / 100 * width
            let y = sin(x / waveLength * .pi) * waveHeight + (height - waveHeight)
            path.addLine(to: CGPoint(x: x, y: y))
        }

        // 左下角收尾
        path.addLine(to: CGPoint(x: 0, y: height - waveHeight))
        path.close()

        let mask = CAShapeLayer()
        mask.path = path.cgPath
        self.layer.mask = mask
    }
}

