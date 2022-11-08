//
//  BoosterBoxView.swift
//  CardApp
//
//  Created by Jacob Lewsey on 10/30/22.
//

import SwiftUI

struct BoosterBoxView: View {
    var body: some View {
        ZStack{
            ScrollView(showsIndicators: false){
                Text("Booster Boxes")
                    .offset(y:-20)
                    .font(.system(size:24))
                    .frame(maxWidth: .infinity)
                    .foregroundColor(.white)
                    .shadow(color: .green, radius: 5, x: 3, y: 3)
                    .shadow(color: .green, radius: 5, x: -3, y: -3)
                Spacer().frame(height: 50)
                VStack(spacing: 100){
                    HStack{
                        ProductView(ProductImage: Image("ChillingReignBB"), ProductImageContents: [Image("CRBBContents")], name: "Chilling Reign Booster Box", ProductContents: ["36 Pokémon TCG: Sword & Shield—Chilling Reign booster packs"], color: Color.green)
                        ProductView(ProductImage: Image("EvolvingSkiesBB"), ProductImageContents: [Image("ESBBContents")], name: "Evolving Skies Booster Box", ProductContents: ["36 Pokémon TCG: Sword & Shield—Evolving Skies booster packs"], color: Color.green)
                    }
                    HStack{
                        ProductView(ProductImage: Image("AstralRadianceBB"), ProductImageContents: [Image("ARBBContents")], name: "Astral Radiance Booster Box", ProductContents: ["36 Pokémon TCG: Sword & Shield—Astral Radiance booster packs"], color: Color.green)
                        ProductView(ProductImage: Image("LostOriginBB"), ProductImageContents: [Image("LOBBContents")], name: "Lost Origin Booster Box", ProductContents: ["36 Pokémon TCG: Sword & Shield—Lost Origin booster packs"], color: Color.green)
                    }
                    HStack{
                        ProductView(ProductImage: Image("SilverTempestBB"), ProductImageContents: [Image("STBBContents")], name: "Silver Tempest Booster Box", ProductContents: ["36 Pokémon TCG: Sword & Shield—Silver Tempest booster packs"], color: Color.green)
                    }
                }
            }
        }
        .background(
            Image("Background7")
                .resizable()
                .scaledToFill()
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                .opacity(0.5)
                .edgesIgnoringSafeArea(.all))
    }
}

struct BoosterBoxView_Previews: PreviewProvider {
    static var previews: some View {
        BoosterBoxView().preferredColorScheme(.dark)
    }
}
