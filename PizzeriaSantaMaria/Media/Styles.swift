//
//  Styles.swift
//  PizzeriaSantaMaria
//
//  Created by Maria Tkachenkova on 20.03.2024.
//

import SwiftUI

struct ButtonStyleYellowColorWide: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(maxWidth: .infinity)
            .foregroundColor(configuration.isPressed ? .white : .black)
            .padding(10)
            .background(configuration.isPressed ? Color.primaryColor1 : Color.primaryColor2)
            .cornerRadius(8)
            .padding(.horizontal)
    }
}

struct ButtonStyleGreenColorWide: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(maxWidth: .infinity)
            .foregroundColor(configuration.isPressed ? .black : .white)
            .padding(10)
            .background(configuration.isPressed ? Color.primaryColor2 : Color.primaryColor1)
            .cornerRadius(8)
            .padding(.horizontal)
    }
}

struct ButtonStylePrimaryColor1: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .foregroundColor(configuration.isPressed ? Color.primaryColor1 : .white)
            .padding(10)
            .background(configuration.isPressed ? .white : Color.primaryColor1)
            .cornerRadius(8)
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Color.primaryColor1, lineWidth: 1)
            )
            .padding(.horizontal)
    }
}

struct ButtonStylePrimaryColorReverse: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .foregroundColor(configuration.isPressed ? .white : Color.primaryColor1)
            .padding(10)
            .background(configuration.isPressed ? Color.primaryColor1 : .white)
            .cornerRadius(8)
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Color.primaryColor1, lineWidth: 1)
            )
            .padding(.horizontal)
    }
}

struct ButtonToggleStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .foregroundColor(configuration.isPressed ? .white : Color.primaryColor1)
            .padding(10)
            .background(configuration.isPressed ? Color.primaryColor1 : .white)
            .cornerRadius(8)
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Color.primaryColor1, lineWidth: 1)
            )
            .padding(.horizontal)
    }
}

extension Text {
    func onboardingTextStyle() -> some View {
        self
            .frame(maxWidth: .infinity, alignment: .leading)
            .foregroundColor(Color.primaryColor1)
            .font(.custom("Karla-Bold", size: 13))
    }
}

extension Font {
    static func displayFont(size: CGFloat) -> Font {
        return Font.custom("Markazi Text", size: size).weight(.medium)
    }
    
    static func subTitleFont() -> Font {
        return Font.custom("Markazi Text", size: 55)
    }
    
    static func regularText() -> Font {
        return Font.custom("Markazi Text", size: 18)
    }
    
    static func paragraphText() -> Font {
        return Font.custom("Karla", size: 15)
    }
    
    static func leadText(size: CGFloat) -> Font {
        return Font.custom("Karla", size: size).weight(.medium)
    }
    //16,15
    
    static func sectionTitle() -> Font {
        return Font.custom("Karla", size: 20).weight(.black)
    }
    
    static func sectionCategories() -> Font {
        return Font.custom("Karla", size: 16).weight(.heavy)
    }
    
    static func highlightText(size: CGFloat) -> Font {
        return Font.custom("Karla", size: size).weight(.regular)
    }
    //12.13
}


extension Color {
    static let primaryColor1 = Color(#colorLiteral(red: 0.2862745225, green: 0.3686274588, blue: 0.3411764801, alpha: 1))
    static let primaryColor2 = Color(#colorLiteral(red: 0.9568627477, green: 0.8078432088, blue: 0.07843137532, alpha: 1))
    
    static let secondaryColor1 = Color(#colorLiteral(red: 0.989240706, green: 0.5802358389, blue: 0.4141188264, alpha: 1))
    static let secondaryColor2 = Color(#colorLiteral(red: 1, green: 0.8488721251, blue: 0.7164030075, alpha: 1))
    
    static let highlightColor1 = Color(#colorLiteral(red: 0.9276351333, green: 0.9375831485, blue: 0.9331009984, alpha: 1))
    static let highlightColor2 = Color(#colorLiteral(red: 0.1999999881, green: 0.1999999881, blue: 0.1999999881, alpha: 1))
}
