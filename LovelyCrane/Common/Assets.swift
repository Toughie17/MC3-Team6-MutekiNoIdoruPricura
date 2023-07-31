//
//  Assest.swift
//  LoveCrane
//
//  Created by 최진용 on 2023/07/17.
//

import SwiftUI

enum Cran: String, CaseIterable {
    case blue, yellow, green, white, pink, purple
}

enum FoldedCrane: String, CaseIterable {
    case touchCrane1, touchCrane2, touchCrane3, touchCrane4
}


struct Assets {
    static let inbox = "inbox"
    static let inboxMessage = "inboxMessage"
    static let send = "send"
    static let setting = "setting"
    static let bottle = "bottle"
    static let dummyImage = "Rectangle"
    static let sendBottle = "sendBottle"
    static let conceptCrane = "conceptCrane"
    static let bottleIn = "bottleIn"
    static let InputCodeImage = "inputCodeImage"
    static let crans: [Cran] = Cran.allCases
    static let bigStrokeCrane = "BigStrokeCrane"
    static let shakingBottle = "ShakingBottle2"
    static let heartBottle = "HeartBottle3"
    static let touchCranes : [FoldedCrane] = FoldedCrane.allCases
    static let writeViewCranes = "writeViewCranes"
    static let receivedHistoryBottle = "receivedHistoryBottle"
    static let historyCrane = "historyCrane"
    static let receivedHistoryViewImage = "receivedHistoryViewImage"
    static let noReceivedViewImage = "noReceivedViewImage"
    static let noWriteCrane = "noWriteCrane"
    static let nicknameViewImage = "nicknameViewImage"
    static let exclamationMark = "exclamationMark"
    static let couplingpaper = "couplingpaper"
    static let receiveConnect = "receiveConnect"
    static let connectbottle = "connectbottle"
}
