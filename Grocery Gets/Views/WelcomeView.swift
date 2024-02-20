//
//  WelcomeView.swift
//  Grocery Gets
//
//  Created by Traton Gossink on 2/8/24.
//

import SwiftUI

struct WelcomeView: View {
    
    
    var body: some View {
        VStack {
            Spacer()
                Text("Welcome To")
                .font(Font.subHeading)
                .padding(.top, 12)
                .padding(.bottom, 21)
            Text("Grocery Gets")
                .font(Font.mainHeading)
                .padding(.bottom, 9)
                Spacer()
            Image("GroceryBag_Cartoon")
                .scaleEffect(0.125)
            Spacer()
            Button {
                
            } label: {
                Text("Get Started")
                    .buttonStyle(OnboardingButton())
            }
                Text("By tappig on 'Get Started', you agree to our Privacy Policy")
                .underline()
                .font(Font.smallCaption)
                .padding(.top, 14)
                .padding(.bottom, 24)
        }
    }
}

#Preview {
    WelcomeView()
}
