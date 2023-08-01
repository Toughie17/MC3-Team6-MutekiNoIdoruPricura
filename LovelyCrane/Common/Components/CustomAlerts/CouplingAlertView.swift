//
//  PresentAlert.swift
//  LovelyCrane
//
//  Created by 황지우2 on 2023/07/29.
//

import SwiftUI

struct CouplingAlertView: View {
    @Binding var myName: String
    @Binding var partnerName: String
    @Binding var showAlert: Bool
    
    var body: some View {
        if showAlert {
            ZStack {
                Color.black.opacity(0.6).ignoresSafeArea()
                RoundedRectangle(cornerRadius: 14)
                    .fill(Color.gray3)
                    .frame(width: UIScreen.getWidth(280), height: UIScreen.getHeight(358))
                VStack(spacing: 0) {
                    Image(Assets.heartBottle)
                        .resizable()
                        .frame(width: UIScreen.getWidth(37), height: UIScreen.getHeight(75))
                    Group {
                        Text(myName) +
                        Text(" X ").foregroundColor(.secondaryLabel) +
                        Text(partnerName)
                    }
                    .foregroundColor(.primaryLabel)
                    .font(partnerName.count > 5 || myName.count > 5 ? Font.bodyfont() : Font.title3font())
                    .padding(.top, UIScreen.getHeight(33))
                    Text("연인 연결이 되었어요!")
                        .foregroundColor(.secondaryLabel)
                        .font(Font.bodyfont())
                        .multilineTextAlignment(.center)
                        .padding(.top, UIScreen.getHeight(29))
                    Button(action: {
                        showAlert = false
                    }){
                        Text("확인")
                            .foregroundColor(.gray3)
                            .font(Font.bodyfont())
                            .padding(.vertical, UIScreen.getHeight(16.5))
                            .padding(.horizontal, UIScreen.getWidth(34))
                            .background(
                                RoundedRectangle(cornerRadius: 8)
                                    .fill(Color.lightPink)
                            )
                    }
                    .padding(.top, UIScreen.getHeight(63))
                }
            }
        }
    }
}

struct CouplingAlertView_Previews: PreviewProvider {
    static var previews: some View {
        CouplingAlertView(myName: .constant("위머"), partnerName: .constant("위머"), showAlert: .constant(true))
    }
}
