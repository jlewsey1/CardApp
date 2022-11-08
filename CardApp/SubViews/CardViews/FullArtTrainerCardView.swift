//
//  FullArtTrainerCardView.swift
//  CardApp
//
//  Created by Jacob Lewsey on 10/30/22.
//

import SwiftUI

struct FullArtTrainerCardView: View {
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
                    singleCardView(image: Image("FATSkyla"), name: "Skyla", color: normal, type: "Trainer", cardNumber: "072/072", setName: "Shining Fates")
                    singleCardView(image: Image("FATZinniasResolve"), name: "Zinnia's Resolve", color: normal, type: "Trainer", cardNumber: "203/203", setName: "Evolving Skies")
                    singleCardView(image: Image("FATSonia"), name: "Sonia", color: normal, type: "Trainer", cardNumber: "192/192", setName: "Rebel Clash")
                }
                HStack{
                    singleCardView(image: Image("FATElesasSparkle"), name: "Elesa's Sparkle", color: normal, type: "Trainer", cardNumber: "260/264", setName: "Fusion Strike")
                    singleCardView(image: Image("FATDancer"), name: "Dancer", color: normal, type: "Trainer", cardNumber: "259/264", setName: "Fusion Strike")
                    singleCardView(image: Image("FATRose"), name: "Rose", color: normal, type: "Trainer", cardNumber: "189/189", setName: "Darkness Ablaze")
                }
                HStack{
                    singleCardView(image: Image("FATPiers"), name: "Piers", color: normal, type: "Trainer", cardNumber: "069/072", setName: "Shining Fates")
                    singleCardView(image: Image("FATSchoolboy"), name: "Schoolboy", color: normal, type: "Trainer", cardNumber: "261/264", setName: "Fusion Strike")
                    singleCardView(image: Image("FATBirdKeeper"), name: "Bird Keeper", color: normal, type: "Trainer", cardNumber: "066/072", setName: "Shining Fates")
                }
                HStack{
                    singleCardView(image: Image("FATBallGuy"), name: "Ball Guy", color: normal, type: "Trainer", cardNumber: "065/072", setName: "Shining Fates")
                    singleCardView(image: Image("FATGymTrainer"), name: "Gym Trainer", color: normal, type: "Trainer", cardNumber: "068/072", setName: "Shining Fates")
                }
            }
            .padding(.top)
        }
    }
}

struct FullArtTrainerCardView_Previews: PreviewProvider {
    static var previews: some View {
        FullArtTrainerCardView()
    }
}
