//
//  ColorVector+RGB.swift
//  ColorVector
//
//  Created by 秋星桥 on 2024/7/3.
//

import Foundation

public extension ColorVector {
    var rgbo: (r: Double, g: Double, b: Double, o: Double) {
        let rgbColor = color(in: .rgb)
        assert(rgbColor.space == .rgb)
        return (rgbColor.v.x, rgbColor.v.y, rgbColor.v.z, rgbColor.v.w)
    }

    var rgba: (r: Double, g: Double, b: Double, a: Double) {
        let value = rgbo
        return (value.r, value.g, value.b, value.o)
    }

    var rgb: (r: Double, g: Double, b: Double) {
        let value = rgbo
        return (value.r, value.g, value.b)
    }
}
