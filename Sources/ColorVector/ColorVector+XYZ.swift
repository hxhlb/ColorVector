//
//  ColorVector+XYZ.swift
//  ColorVector
//
//  Created by 秋星桥 on 2024/7/3.
//

import Foundation

public extension ColorVector {
    var xyzo: (x: Double, y: Double, z: Double, o: Double) {
        let xyzColor = color(in: .xyz)
        assert(xyzColor.space == .xyz)
        return (xyzColor.v.x, xyzColor.v.y, xyzColor.v.z, xyzColor.v.w)
    }

    var xyza: (x: Double, y: Double, z: Double, a: Double) {
        let value = xyzo
        return (value.x, value.y, value.z, value.o)
    }

    var xyz: (x: Double, y: Double, z: Double) {
        let value = xyzo
        return (value.x, value.y, value.z)
    }
}
