//
//  HFCardView.swift
//  CardApp
//
//  Created by Jacob Lewsey on 10/30/22.
//

import SwiftUI

struct HFCardView: View {
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
                    singleCardView(image: Image("HFDecidueyeGX"), name: "Decidueye GX", color: grass, type: "Grass", cardNumber: "SV47/SV94", setName: "Hidden Fates")
                    singleCardView(image: Image("HFReshiramGX"), name: "Reshiram GX", color: fire, type: "Fire", cardNumber: "SV51/SV94", setName: "Hidden Fates")
                    singleCardView(image: Image("HFElectrodeGX"), name: "Electrode GX", color: electric, type: "Electric", cardNumber: "SV57/SV94", setName: "Hidden Fates")
                }
                HStack{
                    singleCardView(image: Image("HFBanetteGX"), name: "Banette GX", color: poison, type: "Ghost", cardNumber: "SV61/SV94", setName: "Hidden Fates")
                    singleCardView(image: Image("HFLycanrocGX"), name: "Lycanroc GX", color: fighting, type: "Rock", cardNumber: "SV67/SV94", setName: "Hidden Fates")
                    singleCardView(image: Image("HFZygardeGX"), name: "Zygarde GX", color: fighting, type: "Ground", cardNumber: "SV65/SV94", setName: "Hidden Fates")
                }
                HStack{
                    singleCardView(image: Image("HFGuzzlordGX"), name: "Guzzlord GX", color: dark, type: "Dark", cardNumber: "SV71/SV94", setName: "Hidden Fates")
                    singleCardView(image: Image("HFKartanaGX"), name: "Kartana GX", color: steel, type: "Steel", cardNumber: "SV73/SV94", setName: "Hidden Fates")
                    singleCardView(image: Image("HFDrampaGX"), name: "Drampa GX", color: normal, type: "Normal", cardNumber: "SV80/SV94", setName: "Hidden Fates")
                }
            }
            .padding(.top)
        }
    }
}

struct HFCardView_Previews: PreviewProvider {
    static var previews: some View {
        HFCardView()
    }
}
