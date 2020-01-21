//
//  Goal.swift
//  Goalin
//
//  Created by wonsoohyeon on 12/01/2020.
//  Copyright © 2020 Soohyeon Won. All rights reserved.
//

import Foundation

// Goalin App의 메인 모델(목표) 정의
/* 목표 - 목표, 목표부제목, 시작일, 종료일, 중간일, 완료여부, 중요도, */

protocol Goal {
    var goal: String { get set } // 목표
    var title: String { get set }  // 제목
    var isDone: Bool { get set }  // 완료여부
}

// Home의 리스트에서 나타낼 Goal Model
class MainGoal: Goal {
    var goal: String = ""
    var title: String = ""
    var isDone: Bool = false
    var startDate: Date = Date()
    var endDate: Date = Date()
    
    init(goal: String,
         title: String,
         isDone: Bool,
         startDate: Date,
         endDate: Date) {
        self.goal = goal
        self.title = title
        self.isDone = isDone
        self.startDate = startDate
        self.endDate = endDate
    }
}

