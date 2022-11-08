//
//  FullArtCardView.swift
//  CardApp
//
//  Created by Jacob Lewsey on 10/30/22.
//

import SwiftUI

struct FullArtCardView: View {
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
                HStack{
                    singleCardView(image: Image("FAZekrom"), name: "Zekrom", color: electric, type: "Electric", cardNumber: "114/114", setName: "Black and White")
                    singleCardView(image: Image("FAReshiram"), name: "Reshiram", color: fire, type: "Fire", cardNumber: "113/114", setName: "Celebrations")
                    singleCardView(image: Image("FARayquazaV"), name: "Rayquaza V", color: dragon, type: "Dragon", cardNumber: "193/203", setName: "Evolving Skies")
                }
                HStack{
                    singleCardView(image: Image("FAEspeonGX"), name: "Espeon GX", color: poison, type: "Psychic", cardNumber: "140/149", setName: "Sun and Moon")
                    singleCardView(image: Image("FAUmbreonV"), name: "Umbreon V", color: dark, type: "Dark", cardNumber: "188/203", setName: "Evolving Skies")
                    singleCardView(image: Image("FAEspeonV"), name: "Espeon V", color: poison, type: "Psychic", cardNumber: "179/203", setName: "Evolving Skies")
                }
                HStack{
                    singleCardView(image: Image("FAMewtwoV"), name: "Mewtwo V", color: poison, type: "Psychic", cardNumber: "SwSh209")
                    singleCardView(image: Image("FATapuLeleGX"), name: "Tapu Lele GX", color: poison, type: "Psychic", cardNumber: "137/145", setName: "Guardians Rising")
                    singleCardView(image: Image("FAZeraoraV"), name: "Zeraora V", color: electric, type: "Electric", cardNumber: "165/198", setName: "Chilling Reign")
                }
                HStack{
                    singleCardView(image: Image("FASlakingV"), name: "Slaking V", color: normal, type: "Normal", cardNumber: "077/078", setName: "Pokemon Go")
                    singleCardView(image: Image("FAVolcanionV"), name: "Volcanion V", color: fire, type: "Fire", cardNumber: "162/198", setName: "Chilling Reign")
                    singleCardView(image: Image("FAMelmetalV"), name: "Melmetal V", color: steel, type: "Steel", cardNumber: "075/078", setName: "Pokemon Go")
                }
                HStack{
                    singleCardView(image: Image("FAEternatusV"), name: "Eternatus V", color: poison, type: "Poison", cardNumber: "SwSh044")
                    singleCardView(image: Image("FAMiloticV"), name: "Milotic V", color: water, type: "Water", cardNumber: "172/192", setName: "Rebel Clash")
                    singleCardView(image: Image("FAStoutlandV"), name: "Stoutland V", color: normal, type: "Normal", cardNumber: "157/163", setName: "Darkness Ablaze")
                }
                HStack{
                    singleCardView(image: Image("FALycanrocV"), name: "Lycanroc V", color: fighting, type: "Rock", cardNumber: "187/203", setName: "Evolving Skies")
                    singleCardView(image: Image("FADrapionV"), name: "Drapion V", color: poison, type: "Poison", cardNumber: "175/185", setName: "Vivid Voltage")
                    singleCardView(image: Image("FADarmanitanGal"), name: "Galarian Darmanitan V", color: water, type: "Ice", cardNumber: "169/185", setName: "Vivid Voltage")
                }
            }
            .padding(.top)
            VStack(spacing: 30){
                HStack{
                    singleCardView(image: Image("FASirfetchdGal"), name: "Galarian Sirfetch'd V", color: fighting, type: "Fighting", cardNumber: "174/185", setName: "Vivid Voltage")
                    singleCardView(image: Image("FACelPikachu"), name: "Pikachu", color: electric, type: "Electric", cardNumber: "005/025", setName: "Celebrations")
                }
            }
        }
    }
}

struct FullArtCardView_Previews: PreviewProvider {
    static var previews: some View {
        FullArtCardView()
    }
}
