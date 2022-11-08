//
//  UniqueCardView.swift
//  CardApp
//
//  Created by Jacob Lewsey on 10/30/22.
//

import SwiftUI

struct UniqueCardView: View {
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
                Text("Amazing Rares")
                    .shadow(color: .yellow, radius: 5, y: 1)
                    .shadow(color: .yellow, radius: 5, y: -1)
                    .padding(.top)
                HStack{
                    singleCardView(image: Image("ARRaikou"), name: "Raikou", color: electric, type: "Electric", cardNumber: "050/185", setName: "Vivid Voltage")
                    singleCardView(image: Image("ARRayquaza"), name: "Rayquaza", color: normal, type: "Normal", cardNumber: "138/185", setName: "Vivid Voltage")
                    singleCardView(image: Image("ARCelebi"), name: "Celebi", color: grass, type: "Grass", cardNumber: "009/185", setName: "Vivid Voltage")
                }
                HStack{
                    singleCardView(image: Image("ARZacian"), name: "Zacian", color: poison, type: "Psychic", cardNumber: "082/185", setName: "Vivid Voltage")
                    singleCardView(image: Image("ARJirachi"), name: "Jirachi", color: steel, type: "Steel", cardNumber: "119/185", setName: "Vivid Voltage")
                    singleCardView(image: Image("ARYveltal"), name: "Yveltal", color: dark, type: "Dark", cardNumber: "046/072", setName: "Shining Fates")
                }
                HStack{
                    singleCardView(image: Image("ARKyogre"), name: "Kyogre", color: water, type: "Water", cardNumber: "021/072", setName: "Shining Fates")
                    singleCardView(image: Image("ARZamazenta"), name: "Zamazenta", color: fighting, type: "Fighting", cardNumber: "102/185", setName: "Vivid Voltage")
                    singleCardView(image: Image("ARReshiram"), name: "Reshiram", color: fire, type: "Fire", cardNumber: "017/072", setName: "Shining Fates")
                }
            }
            VStack(spacing: 30){
                Text("Radiants")
                    .shadow(color: .yellow, radius: 5, y: 1)
                    .shadow(color: .yellow, radius: 5, y: -1)
                    .padding(.top)
                HStack{
                    singleCardView(image: Image("radiantVenusaur"), name: "Radiant Venusaur", color: grass, type: "Grass", cardNumber: "004/078", setName: "Pokemon Go")
                    singleCardView(image: Image("radiantCharizard"), name: "Radiant Charizard", color: fire, type: "Fire", cardNumber: "011/078", setName: "Pokemon Go")
                    singleCardView(image: Image("radiantBlastoise"), name: "Radiant Blastoise", color: water, type: "Water", cardNumber: "018/078", setName: "Pokemon Go")
                }
                HStack{
                    singleCardView(image: Image("radiantHeatran"), name: "Radiant Heatran", color: fire, type: "Fire", cardNumber: "027/189", setName: "Astral Radiance")
                    singleCardView(image: Image("radiantGreninja"), name: "Radiant Greninja", color: water, type: "Water", cardNumber: "046/189", setName: "Astral Radiance")
                    singleCardView(image: Image("radiantHawlucha"), name: "Radiant Hawlucha", color: fighting, type: "Fighting", cardNumber: "081/189", setName: "Astral Radiance")
                }
                HStack(spacing: 50){
                    singleCardView(image: Image("radiantSneasler"), name: "Radiant Sneasler", color: dark, type: "Dark", cardNumber: "123/196", setName: "Lost Origin")
                    singleCardView(image: Image("radiantEevee"), name: "Radiant Eevee", color: normal, type: "Normal", cardNumber: "SwSh230")
                }
            }
            .padding()
            VStack(spacing: 30){
                Text("Promos")
                    .shadow(color: .yellow, radius: 5, y: 1)
                    .shadow(color: .yellow, radius: 5, y: -1)
                    .padding(.top)
                HStack(spacing: 75){
                    singleCardView(image: Image("metalCharizard"), name: "Metal Charizard", color: fire, type: "Fire", cardNumber: "004/102", setName: "Celebrations")
                    singleCardView(image: Image("metalPikachu"), name: "Metal Pikachu", color: electric, type: "Electric", cardNumber: "58/102", setName: "Celebrations")
                }
                HStack(spacing: 25){
                    singleCardView(image: Image("promoZacianV"), name: "Zacian V", color: steel, type: "Steel", cardNumber: "SwSh076")
                    singleCardView(image: Image("promoZamazentaV"), name: "Zamazenta V", color: steel, type: "Steel", cardNumber: "SwSh077")
                }
                HStack(spacing: 75){
                    singleCardView(image: Image("promoPikachuV"), name: "Pikachu V", color: electric, type: "Electric", cardNumber: "SwSh145")
                    singleCardView(image: Image("promoPokeBall"), name: "Poke Ball", color: normal, type: "Item", cardNumber: "SwSh146")
                }
            }
            .padding()
        }
    }
}

struct UniqueCardView_Previews: PreviewProvider {
    static var previews: some View {
        UniqueCardView()
    }
}
