//
//  Slide.swift
//  Trafel
//
//  Created by Kittikawin Sontinarakul on 7/3/2563 BE.
//  Copyright © 2563 Kittikawin Sontinarakul. All rights reserved.
//

import Foundation

struct Slide {
    let imageName: String
    let title: String
    let description: String
    
    static let collection: [Slide] = [
        Slide(imageName: "imSlide1", title: "Welcome To Trafel", description: "Trafel make you to travel aroumd the world. and make a new friends, and create memorable experiences"),
        Slide(imageName: "imSlide2", title: "ทำไมเราต้องละหมาด", description: "การละหมาด  (อัศ-ศ่อลาฮฺ)  ถือเป็นเครื่องสำแดงความเป็นอิสลามอันดับแรกในวิถีชีวิตของชนมุสลิม (เสาหลักของศาสนา)"),
        Slide(imageName: "imSlide3", title: "หะดีษ, หาดีษ, ฮาดีษ", description: "คำพูด การกระทำ การยอมรับ และคุณลักษณะ ตลอดจนชีวประวัติของท่านนบีมุฮัมมัด (ศ) “ทุก ๆ สิ่งที่พาดพิงถึงท่านนบี (ศ)\"")
    ]
}
