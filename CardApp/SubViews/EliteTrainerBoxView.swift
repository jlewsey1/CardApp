//
//  EliteTrainerBoxView.swift
//  CardApp
//
//  Created by Jacob Lewsey on 10/30/22.
//

import SwiftUI

struct EliteTrainerBoxView: View {
    
    var energy = "45 Pokémon TCG Energy cards"
    var dice = "6 damage-counter dice"
    var coin = "1 competition-legal coin-flip die"
    var marker = "2 acrylic condition markers"
    var rulebook = "A Pokémon TCG rulebook"
    var box = "A collector’s box to hold everything, with 4 dividers to keep it organized"
    var code = "A code card for the Pokémon Trading Card Game Online"
    var vstar = "1 acrylic VSTAR marker"
    
    var body: some View {
        ZStack{
            ScrollView(showsIndicators: false){
                Text("Elite Trainer Boxes")
                    .offset(y:-20)
                    .font(.system(size:24))
                    .frame(maxWidth: .infinity)
                    .foregroundColor(.white)
                    .shadow(color: .blue, radius: 5, x: 3, y: 3)
                    .shadow(color: .blue, radius: 5, x: -3, y: -3)
                Spacer()
                    .frame(height: 50)
                VStack(spacing: 100){
                    HStack{
                        ProductView(ProductImage: Image("HiddenFatesETB"), ProductImageContents: [Image("HFETBContents")], ProductImageCards: [Image("ETB1")], name: "Hidden Fates Elite Trainer Box", ProductContents: ["10 Pokémon TCG: Hidden Fates booster packs (Each pack contains 10 cards and 1 basic Energy.)", "A full-art foil promo card featuring Moltres & Zapdos & Articuno-GX", "65 card sleeves featuring Moltres & Zapdos & Articuno", energy, "A player’s guide to the Hidden Fates expansion", dice, coin, "\(marker) and 1 acrylic TAG TEAM GX marker", box, code], color: Color.blue)
                        ProductView(ProductImage: Image("ShiningFatesETB"), ProductImageContents: [Image("SFETBContents")], ProductImageCards: [Image("ETB2")], name: "Shining Fates Elite Trainer Box", ProductContents: ["10 Pokémon TCG: Shining Fates booster packs (Each pack contains 10 cards and 1 basic Energy.)", "1 foil promo card featuring Eevee VMAX", "65 card sleeves featuring Gigantamax Eevee  ", energy, "A player’s guide to the Shining Fates expansion", dice, coin, marker, box, code], color: Color.blue)
                    }
                    HStack{
                        VStack{
                            ProductView(ProductImage: Image("CelebrationsETB"), ProductImageContents: [Image("CelETBContents")], ProductImageCards: [Image("ETB3")], name: "Pokmeon Center Exclusive Celebrations Elite Trainer Box", ProductContents: ["13 Pokémon TCG: Celebrations 4-card booster packs", "6 additional Pokémon TCG booster packs, each containing 10 cards and 1 basic Energy", "1 special foil card featuring Greninja ☆", "65 card sleeves featuring the Pokémon 25 logo and lightning tail design", energy, "A player’s guide to the Celebrations expansion", rulebook, "6 stamped aluminum damage-counter dice", "1 metal Pokémon coin","2 acrylic condition markers", "A deck box", box, code], color: Color.blue)
                        }
                        VStack{
                            ProductView(ProductImage: Image("EvolvingSkiesETB"), ProductImageContents: [Image("ESETBContents")], name: "Pokemon Center Exclusive Evolving Skies Elite Trainer Box", ProductContents: ["10 Pokémon TCG: Evolving Skies booster packs (Each pack contains 10 cards and 1 basic Energy.)", "1 A special collector's pin featuring Eevee", "65 matte card sleeves featuring Vaporeon, Espeon, Glaceon, and Sylveon", energy, "A player's guide to the Sword & Shield—Evolving Skies expansion", rulebook, dice, "1 metallic Pokémon coin featuring Vaporeon, Espeon, Glaceon, and Sylveon", marker, box, code], color: Color.blue)
                        }
                    }
                    HStack{
                        VStack{
                            ProductView(ProductImage: Image("BrilliantStarsETB"), ProductImageContents: [Image("BSETBContents")], name: "Pokemon Center Exclusive Brilliant Stars Elite Trainer Box", ProductContents: ["10 Pokémon TCG: Sword & Shield—Brilliant Stars booster packs", "65 card sleeves featuring Arceus", "1 deck box featuring Arceus, with a separate space for storing accessories", energy, "A player's guide to the Sword & Shield—Brilliant Stars expansion", rulebook, dice, coin, "1 metallic coin featuring Arceus", marker, vstar, box, code], color: Color.blue)
                        }
                        VStack{
                            ProductView(ProductImage: Image("AstralRadianceETB"), ProductImageContents: [Image("ARETBContents")], name: "Pokemon Center Exclusive Astral Radiance Elite Trainer Box", ProductContents: ["10 Pokémon TCG: Sword & Shield—Astral Radiance booster packs", "65 card sleeves featuring Darkrai", energy, "A player's guide to the Sword & Shield—Astral Radiance expansion", rulebook, dice, "1 metallic coin featuring Darkrai", marker, vstar, box, code], color: Color.blue)
                        }
                    }
                    HStack{
                        VStack{
                            ProductView(ProductImage: Image("LostOriginETB"), ProductImageContents: [Image("LOETBContents")], name: "Pokemon Center Exclusive Lost Origin Elite Trainer Box", ProductContents: ["10 Pokémon TCG: Sword & Shield—Lost Origin booster packs", "A special collector’s pin featuring Giratina", "65 card sleeves featuring Giratina", energy, "A player's guide to the Sword & Shield—Astral Radiance expansion", rulebook, dice, "1 metallic coin featuring Giratina", marker, vstar, box, code], color: Color.blue)
                        }
                    }
                }
            }
        }
        .background(
            Image("Background6")
                .resizable()
                .scaledToFill()
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                .opacity(0.5)
                .edgesIgnoringSafeArea(.all))
    }
}

struct EliteTrainerBoxView_Previews: PreviewProvider {
    static var previews: some View {
        EliteTrainerBoxView().preferredColorScheme(.dark)
    }
}
