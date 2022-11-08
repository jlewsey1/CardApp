//
//  SecretRareView.swift
//  CardApp
//
//  Created by Jacob Lewsey on 10/30/22.
//

import SwiftUI

struct SecretRareView: View {
    let fighting = Color(#colorLiteral(red: 0.7607843137, green: 0.1803921569, blue: 0.1568627451, alpha: 1))
    let water = Color(#colorLiteral(red: 0.3882352941, green: 0.5647058824, blue: 0.9411764706, alpha: 1))
    let electric = Color(#colorLiteral(red: 0.968627451, green: 0.8156862745, blue: 0.1725490196, alpha: 1))
    let fire = Color(#colorLiteral(red: 0.9333333333, green: 0.5058823529, blue: 0.1882352941, alpha: 1))
    let fairy = Color(#colorLiteral(red: 0.8392156863, green: 0.5215686275, blue: 0.6784313725, alpha: 1))
    let steel = Color(#colorLiteral(red: 0.7176470588, green: 0.7176470588, blue: 0.8078431373, alpha: 1))
    let dark = Color(#colorLiteral(red: 0.4392156863, green: 0.3411764706, blue: 0.2745098039, alpha: 1))
    let grass = Color(#colorLiteral(red: 0.4784313725, green: 0.7803921569, blue: 0.2980392157, alpha: 1))
    let dragon = Color(#colorLiteral(red: 0.4352941176, green: 0.2078431373, blue: 0.9882352941, alpha: 1))
    let normal = Color(#colorLiteral(red: 0.6588235294, green: 0.6549019608, blue: 0.4784313725, alpha: 1))
    let poison = Color(#colorLiteral(red: 0.6392156863, green: 0.2431372549, blue: 0.631372549, alpha: 1))
    
    var body: some View {
        ScrollView(showsIndicators: false){
            
            VStack(spacing: 30){
                HStack(spacing: 15){
                    singleCardView(image: Image("PKyogre"), name: "Primal Kyogre EX", color: water, type: "Water", cardNumber: "96/98", setName: "Ancient Origins")
                    singleCardView(image: Image("PGroudon"), name: "Primal Groudon EX", color: fighting, type: "Ground", cardNumber: "97/98", setName: "Ancient Origins")
                    singleCardView(image: Image("MRayquaza"), name: "Mega Rayquaza EX", color: normal, type: "Normal", cardNumber: "98/98", setName: "Ancient Origins")
                }
                HStack(spacing: 15){
                    singleCardView(image: Image("Mew"), name: "Mew", color: poison, type: "Psychic", cardNumber: "25/25", setName: "Celebrations")
                    singleCardView(image: Image("Electrode"), name: "Electrode", color: electric, type: "Electric", cardNumber: "222/198", setName: "Chilling Reign")
                    singleCardView(image: Image("GyaradosEX"), name: "Gyarados EX", color: water, type: "Water", cardNumber: "123/122", setName: "Breakpoint")
                }
                HStack(spacing: 15){
                    singleCardView(image: Image("Zekrom"), name: "Zekrom", color: electric, type: "Electric", cardNumber: "115/113", setName: "Legendary Treasures")
                    singleCardView(image: Image("NestBall"), name: "Nest Ball", color: normal, type: "Item", cardNumber: "158/149", setName: "Sun and Moon")
                    singleCardView(image: Image("TurboPatch"), name: "Turbo Patch", color: normal, type: "Item", cardNumber: "200/189", setName: "Chilling reign")
                }
                HStack(spacing: 15){
                    singleCardView(image: Image("Darkness"), name: "Darkness Energy", color: dark, type: "Dark", cardNumber: "236/203", setName: "Evolving Skies")
                    singleCardView(image: Image("Milo"), name: "Milo", color: normal, type: "Trainer", cardNumber: "201/192", setName: "Rebel Clash")
                    singleCardView(image: Image("Peonia"), name: "Peonia", color: normal, type: "Trainer", cardNumber: "219/198", setName: "Chilling Reign")
                }
                HStack(spacing: 15){
                    singleCardView(image: Image("GarbodorVmax"), name: "Garbodor VMAX", color: dark, type: "Dark", cardNumber: "216/203", setName: "Evolving Skies")
                    singleCardView(image: Image("AlcremieVmax"), name: "Alcremie VMAX", color: poison, type: "Psychic", cardNumber: "073/072", setName: "Shining Fates")
                    singleCardView(image: Image("LycanrocGX"), name: "Lycanroc GX", color: fighting, type: "Rock", cardNumber: "155/147", setName: "Burning Shadows")
                }
            }
            .foregroundColor(.white)
            .padding(.top)
        }
    }
}


struct SecretRareView_Previews: PreviewProvider {
    static var previews: some View {
        SecretRareView()
    }
}
