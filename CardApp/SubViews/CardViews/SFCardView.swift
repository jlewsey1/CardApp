//
//  SFCardView.swift
//  CardApp
//
//  Created by Jacob Lewsey on 10/30/22.
//

import SwiftUI

struct SFCardView: View {
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
                    singleCardView(image: Image("SFGrookey"), name: "Grookey", color: grass, type: "Grass", cardNumber: "SV004/SV122", setName: "Shining Fates")
                    singleCardView(image: Image("SFThwackey"), name: "Thwackey", color: grass, type: "Grass", cardNumber: "SV005/SV122", setName: "Shining Fates")
                    singleCardView(image: Image("SFGossifleur"), name: "Gossifleur", color: grass, type: "Grass", cardNumber: "SV010/SV122", setName: "Shining Fates")
                }
                HStack{
                    singleCardView(image: Image("SFApplin"), name: "Applin", color: grass, type: "Grass", cardNumber: "SV012/SV122", setName: "Shining Fates")
                    singleCardView(image: Image("SFAppletun"), name: "Appletun", color: grass, type: "Grass", cardNumber: "SV014/SV122", setName: "Shining Fates")
                    singleCardView(image: Image("SFScorbunny"), name: "Scorbunny", color: fire, type: "Fire", cardNumber: "SV015/SV122", setName: "Shining Fates")
                }
                HStack{
                    singleCardView(image: Image("SFMrMimeGal"), name: "Galarian Mr. Mime", color: water, type: "Ice", cardNumber: "SV020/SV122", setName: "Shining Fates")
                    singleCardView(image: Image("SFMrRimeGal"), name: "Galarian Mr. Rime", color: water, type: "Ice", cardNumber: "SV021/SV122", setName: "Shining Fates")
                    singleCardView(image: Image("SFDarumakaGal"), name: "Galarian Darumaka", color: water, type: "Ice", cardNumber: "SV023/SV122", setName: "Shining Fates")
                }
                HStack{
                    singleCardView(image: Image("SFSobble"), name: "Sobble", color: water, type: "Water", cardNumber: "SV025/SV122", setName: "Shining Fates")
                    singleCardView(image: Image("SFChewtle"), name: "Chewtle", color: water, type: "Water", cardNumber: "SV028/SV122", setName: "Shining Fates")
                    singleCardView(image: Image("SFCramorant"), name: "Cramorant", color: water, type: "Water", cardNumber: "SV030/SV122", setName: "Shining Fates")
                }
                HStack{
                    singleCardView(image: Image("SFArrokuda"), name: "Arrokuda", color: water, type: "Water", cardNumber: "SV031/SV122", setName: "Shining Fates")
                    singleCardView(image: Image("SFBarraskewda"), name: "Barraskewda", color: water, type: "Water", cardNumber: "SV032/SV122", setName: "Shining Fates")
                    singleCardView(image: Image("SFFrosmoth"), name: "Frosmoth", color: water, type: "Ice", cardNumber: "SV034/SV122", setName: "Shining Fates")
                }
            }
            .padding(.top)
            VStack(spacing: 30){
                HStack{
                    singleCardView(image: Image("SFRotom"), name: "Rotom", color: electric, type: "Electric", cardNumber: "SV038/SV122", setName: "Shining Fates")
                    singleCardView(image: Image("SFBoltund"), name: "Boltund", color: electric, type: "Electric", cardNumber: "SV040/SV122", setName: "Shining Fates")
                    singleCardView(image: Image("SFToxel"), name: "Toxel", color: electric, type: "Electric", cardNumber: "SV041/SV122", setName: "Shining Fates")
                }
                HStack{
                    singleCardView(image: Image("SFPincurchin"), name: "Pincurchin", color: electric, type: "Electric", cardNumber: "SV043/SV122", setName: "Shining Fates")
                    singleCardView(image: Image("SFMorpeko"), name: "Morpeko", color: electric, type: "Electric", cardNumber: "SV044/SV122", setName: "Shining Fates")
                    singleCardView(image: Image("SFArctozolt"), name: "Arctozolt", color: electric, type: "Electric", cardNumber: "SV046/SV122", setName: "Shining Fates")
                }
                HStack{
                    singleCardView(image: Image("SFCorsolaGal"), name: "Galarian Corsola", color: poison, type: "Ghost", cardNumber: "SV049/SV122", setName: "Shining Fates")
                    singleCardView(image: Image("SFMilcery"), name: "Milcery", color: fairy, type: "Fairy", cardNumber: "SV057/SV122", setName: "Shining Fates")
                    singleCardView(image: Image("SFDreepy"), name: "Dreepy", color: poison, type: "Ghost", cardNumber: "SV060/SV122", setName: "Shining Fates")
                }
                HStack{
                    singleCardView(image: Image("SFSirfetchdGal"), name: "Galarian Sirfetch'd", color: fighting, type: "Fighting", cardNumber: "SV064/SV122", setName: "Shining Fates")
                    singleCardView(image: Image("SFCarkol"), name: "Carkol", color: fighting, type: "Rock", cardNumber: "SV068/SV122", setName: "Shining Fates")
                    singleCardView(image: Image("SFCoalossal"), name: "Coalossal", color: fighting, type: "Rock", cardNumber: "SV069/SV122", setName: "Shining Fates")
                }
                HStack{
                    singleCardView(image: Image("SFSandaconda"), name: "Sandaconda", color: fighting, type: "Ground", cardNumber: "SV071/SV122", setName: "Shining Fates")
                    singleCardView(image: Image("SFZigzagoonGal"), name: "Galarian Zigzagoon", color: dark, type: "Dark", cardNumber: "SV078/SV122", setName: "Shining Fates")
                    singleCardView(image: Image("SFImpidimp"), name: "Impidimp", color: dark, type: "Dark", cardNumber: "SV083/SV122")
                }
            }
            VStack(spacing: 30){
                HStack{
                    singleCardView(image: Image("SFGrimmsnarl"), name: "Grimmsnarl", color: dark, type: "Dark", cardNumber: "SV085/SV122", setName: "Shining Fates")
                    singleCardView(image: Image("SFCufant"), name: "Cufant", color: steel, type: "Steel", cardNumber: "SV090/SV122", setName: "Shining Fates")
                    singleCardView(image: Image("SFDuraludon"), name: "Duraludon", color: steel, type: "Steel", cardNumber: "SV092/SV122", setName: "Shining Fates")
                }
                HStack{
                    singleCardView(image: Image("SFCinccino"), name: "Cinccino", color: normal, type: "Normal", cardNumber: "SV094/SV122", setName: "Shining Fates")
                    singleCardView(image: Image("SFDucklett"), name: "Ducklett", color: normal, type: "Normal", cardNumber: "SV095/SV122", setName: "Shining Fates")
                    singleCardView(image: Image("SFSwanna"), name: "Swanna", color: normal, type: "Normal", cardNumber: "SV096/SV122", setName: "Shining Fates")
                }
                HStack{
                    singleCardView(image: Image("SFBunnelby"), name: "Bunnelby", color: normal, type: "Normal", cardNumber: "SV097/SV122", setName: "Shining Fates")
                    singleCardView(image: Image("SFSkwovet"), name: "Skwovet", color: normal, type: "Normal", cardNumber: "SV099/SV122", setName: "Shining Fates")
                    singleCardView(image: Image("SFWooloo"), name: "Wooloo", color: normal, type: "Normal", cardNumber: "SV103/SV122", setName: "Shining Fates")
                }
                HStack{
                    singleCardView(image: Image("SFDubwool"), name: "Dubwool", color: normal, type: "Normal", cardNumber: "SV104/SV122", setName: "Shining Fates")
                }
                HStack{
                    singleCardView(image: Image("SFRillaboomV"), name: "Rillaboom V", color: grass, type: "Grass", cardNumber: "SV105/SV122", setName: "Shining Fates")
                    singleCardView(image: Image("SFLaprasV"), name: "Lapras V", color: water, type: "Water", cardNumber: "SV110/SV122", setName: "Shining Fates")
                    singleCardView(image: Image("SFLaprasVmax"), name: "Lapras VMAX", color: water, type: "Water", cardNumber: "SV111/SV122", setName: "Shining Fates")
                }
            }
            VStack(spacing: 30){
                HStack{
                    singleCardView(image: Image("SFToxtricityVmax"), name: "Toxtricity VMAX", color: electric, type: "Electric", cardNumber: "SV113/SV122", setName: "Shining Fates")
                    singleCardView(image: Image("SFIndeedeeV"), name: "Indeedee V", color: poison, type: "Psychic", cardNumber: "SV114/SV122", setName: "Shining Fates")
                    singleCardView(image: Image("SFFalinksV"), name: "Falinks V", color: fighting, type: "Fighting", cardNumber: "SV115/SV122", setName: "Shining Fates")
                }
                HStack{
                    singleCardView(image: Image("SFGrimmsnarlVmax"), name: "Grimmsnarl VMAX", color: dark, type: "Dark", cardNumber: "SV117/SV122", setName: "Shining Fates")
                    singleCardView(image: Image("SFDittoV"), name: "Ditto V", color: normal, type: "Normal", cardNumber: "SV118/SV122", setName: "Shining Fates")
                    singleCardView(image: Image("SFDubwoolV"), name: "Dubwool V", color: normal, type: "Normal", cardNumber: "SV119/SV122", setName: "Shining Fates")
                }
                HStack{
                    singleCardView(image: Image("SFEldegossV"), name: "Eldegoss V", color: grass, type: "Grass", cardNumber: "SwSh084", setName: "Shining Fates")
                    singleCardView(image: Image("SFBoltundV"), name: "Boltund V", color: electric, type: "Electric", cardNumber: "SwSh085", setName: "Shining Fates")
                    singleCardView(image: Image("SFCramorantV"), name: "Cramorant V", color: water, type: "Water", cardNumber: "SwSh086", setName: "Shining Fates")
                }
                HStack(spacing: 75){
                    singleCardView(image: Image("SFCrobatV"), name: "Crobat V", color: dark, type: "Dark", cardNumber: "SwSh098", setName: "Shining Fates")
                    singleCardView(image: Image("SFCrobatVmax"), name: "Crobat VMAX", color: dark, type: "Dark", cardNumber: "SwSh099", setName: "Shining Fates")
                }
                HStack(spacing: 25){
                    singleCardView(image: Image("SFDragapultV"), name: "Dragapult V", color: poison, type: "Ghost", cardNumber: "SwSh096", setName: "Shining Fates")
                    singleCardView(image: Image("SFDragapultVmax"), name: "Dragapult VMAX", color: poison, type: "Ghost", cardNumber: "SwSh097", setName: "Shining Fates")
                }
            }
        }
    }
}

struct SFCardView_Previews: PreviewProvider {
    static var previews: some View {
        SFCardView()
    }
}
