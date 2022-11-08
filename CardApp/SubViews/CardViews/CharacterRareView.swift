//
//  CharacterRareView.swift
//  CardApp
//
//  Created by Jacob Lewsey on 10/30/22.
//

import SwiftUI

struct CharacterRareView: View {
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
                Text("Brilliant Stars Trainer Gallery")
                    .shadow(color: .yellow, radius: 5, y: 1)
                    .shadow(color: .yellow, radius: 5, y: -1)
                    .padding(.top)
                HStack{
                    singleCardView(image: Image("CRFlareon"), name: "Flareon", color: fire, type: "Fire", cardNumber: "TG01/TG30", setName: "Brilliant Stars")
                    singleCardView(image: Image("CRVaporeon"), name: "Vaporeon", color: water, type: "Water", cardNumber: "TG02/TG30", setName: "Brilliant Stars")
                    singleCardView(image: Image("CROctillery"), name: "Octillery", color: water, type: "Water", cardNumber: "TG03/TG30", setName: "Brilliant Stars")
                }
                HStack{
                    singleCardView(image: Image("CRJolteon"), name: "Jolteon", color: electric, type: "Electric", cardNumber: "TG04/TG30", setName: "Brilliant Stars")
                    singleCardView(image: Image("CRZekrom"), name: "Zekrom", color: electric, type: "Electric", cardNumber: "TG05/TG30", setName: "Brilliant Stars")
                    singleCardView(image: Image("CRDusknoir"), name: "Dusknoir", color: poison, type: "Ghost", cardNumber: "TG06/TG30", setName: "Brilliant Stars")
                }
                HStack{
                    singleCardView(image: Image("CRDedenne"), name: "Dedenne", color: electric, type: "Electric", cardNumber: "TG07/TG30", setName: "Brilliant Stars")
                    singleCardView(image: Image("CRAlcremie"), name: "Alcremie", color: fairy, type: "Fairy", cardNumber: "TG08/TG30", setName: "Brilliant Stars")
                    singleCardView(image: Image("CRAriados"), name: "Ariados", color: poison, type: "Poison", cardNumber: "TG09/TG30", setName: "Brilliant Stars")
                }
                HStack{
                    singleCardView(image: Image("CRHoundoom"), name: "Houndoom", color: fire, type: "Fire", cardNumber: "TG10/TG30", setName: "Brilliant Stars")
                    singleCardView(image: Image("CREevee"), name: "Eevee", color: normal, type: "Normal", cardNumber: "TG11/TG30", setName: "Brilliant Stars")
                    singleCardView(image: Image("CROranguru"), name: "Oranguru", color: normal, type: "Normal", cardNumber: "TG12/TG30", setName: "Brilliant Stars")
                }
                HStack{
                    singleCardView(image: Image("CRssUrshifuV"), name: "Single Strike Urshifu V", color: fighting, type: "Fighting", cardNumber: "TG18/TG30", setName: "Brilliant Stars")
                    singleCardView(image: Image("CRssUrshifuVmax"), name: "Single Strike Urshifu VMAX", color: fighting, type: "Fighting", cardNumber: "TG19/TG30", setName: "Brilliant Stars")
                    singleCardView(image: Image("CRrsUrshifuV"), name: "Rapid Strike Urshifu V", color: fighting, type: "Fighting", cardNumber: "TG20/TG30", setName: "Brilliant Stars")
                }
                HStack{
                    singleCardView(image: Image("CRrsUrshifuVmax"), name: "Rapid Strike Urshifu VMAX", color: fighting, type: "Fighting", cardNumber: "TG21/TG30", setName: "Brilliant Stars")
                    singleCardView(image: Image("CRssUVmax"), name: "Single Strike Urshifu VMAX", color: fighting, type: "Fighting", cardNumber: "TG29/TG30", setName: "Brilliant Stars")
                    singleCardView(image: Image("CRrsUVmax"), name: "Rapid Strike Urshifu VMAX", color: water, type: "Water", cardNumber: "TG30/TG30", setName: "Brilliant Stars")
                }
            }
            .padding(.bottom)
            
            VStack(spacing: 30){
                Text("Lost Origin Trainer Gallery")
                    .shadow(color: .yellow, radius: 5, y: 1)
                    .shadow(color: .yellow, radius: 5, y: -1)
                    .padding(.top)
                HStack{
                    singleCardView(image: Image("CRRoserade"), name: "Roserade", color: grass, type: "Grass", cardNumber: "TG02/TG30", setName: "Lost Origin")
                    singleCardView(image: Image("CRCastform"), name: "Castform", color: normal, type: "Normal", cardNumber: "TG11/TG30", setName: "Lost Origin")
                }
            }
        }
    }
}


struct CharacterRareView_Previews: PreviewProvider {
    static var previews: some View {
        CharacterRareView()
    }
}
