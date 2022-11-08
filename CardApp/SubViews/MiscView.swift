//
//  MiscView.swift
//  CardApp
//
//  Created by Jacob Lewsey on 10/30/22.
//

import SwiftUI

struct MiscView: View {
    var body: some View {
        ZStack{
            ScrollView(showsIndicators: false){
                Text("Miscellaneous Products")
                    .offset(y:-20)
                    .font(.system(size:24))
                    .frame(maxWidth: .infinity)
                    .foregroundColor(.white)
                    .shadow(color: .purple, radius: 5, x: 3, y: 3)
                    .shadow(color: .purple, radius: 5, x: -3, y: -3)
                Spacer()
                    .frame(height: 50)
                VStack(spacing: 100){
                    HStack{
                        ProductView(ProductImage: Image("CoinContents"), ProductImageContents: [Image("Coins")], name: "Pokemon Celebration Commemorative Coins", ProductContents: ["Includes nine coins in a display box", "Each region's coin is embossed with its name", "Coins are easily removable and may be displayed separately if you choose", "These coins are not a toy; keep away from children", "Part of the Pokémon Celebration collection", "Pokémon Center Original"], color: Color.purple)
                        ProductView(ProductImage: Image("MewTin"), ProductImageCards: [Image("mewVTin")], name: "Mew V Forces Tin", ProductContents: ["One foil Pokémon V: Mew V", "4 Pokémon TCG booster packs", "A code card for the Pokémon Trading Card Game Online"], color: Color.purple)
                    }
                    HStack{
                        ProductView(ProductImage: Image("MarnieBox"), ProductImageCards: [Image("Misc1"), Image("Misc2")], name: "Marnie Premium Tournament Collection Box", ProductContents: ["1 full-art foil Supporter card featuring Marnie", "3 additional foil Supporter cards featuring Marnie", "65 card sleeves featuring Marnie", "A sturdy deck box featuring Marnie", "A large metallic coin featuring Marnie", "2 coin condition markers", "6 tournament-ready damage dice", "7 Pokémon TCG booster packs, each containing 10 cards and 1 basic Energy", "A code card for the Pokémon Trading Card Game Online"], color: Color.purple)
                        ProductView(ProductImage: Image("JuniperBox"), ProductImageCards: [Image("Misc3"), Image("Misc4")], name: "Juniper Premium Tournament Collection Box", ProductContents: ["1 full-art foil Professor’s Research Supporter card featuring Professor Juniper", "3 additional foil Professor’s Research Supporter cards featuring Professor Juniper", "65 card sleeves featuring Juniper", "A sturdy deck box featuring Juniper", "A large metallic coin featuring Juniper", "2 coin condition markers", "6 tournament-ready damage dice", "7 Pokémon TCG booster packs, each containing 10 cards and 1 basic Energy", "A code card for the Pokémon Trading Card Game Online"], color: Color.purple)
                    }
                    HStack{
                        ProductView(ProductImage: Image("RadiantEeveePC"), ProductImageCards: [Image("radiantEevee")], name: "Pokemon GO Premium Collection (Radiant Eevee)", ProductContents: ["A foil promo card featuring Radiant Eevee", "A deluxe pin featuring Radiant Eevee", "A playmat with artwork featuring Radiant Eevee", "8 Pokémon GO booster packs", "A code card for Pokémon TCG Live"], color: Color.purple)
                        ProductView(ProductImage: Image("CelebrationsFigurePC"), ProductImageContents: [Image("CelebrationsFigureContents")], ProductImageCards: [Image("Misc5"), Image("Misc6")], name: "Celebrations Figure Premium Collection Box (Pikachu VMAX)", ProductContents: ["1 etched foil promo card featuring Pikachu VMAX", "1 foil promo card featuring Pikachu V", "A supersize figure of Gigantamax Pikachu that makes a big impression!", "8 Pokémon TCG: Celebrations 4-card booster packs", "3 additional Pokémon TCG booster packs, each containing 10 cards and 1 basic Energy", "A code card for Pokémon TCG Live"], color: Color.purple)
                    }
                    HStack{
                        ProductView(ProductImage: Image("LOBlisters"), ProductImageContents: [Image("LOBContents")], name: "Sword and Shield-Lost Origin Sleeved Booster Pack (10 Cards)", ProductContents: ["Includes 1 Pokémon TCG: Sword & Shield—Lost Origin booster pack"], color: Color.purple)
                    }
                }
            }
        }
        .background(
            Image("Background4")
                .resizable()
                .scaledToFill()
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                .opacity(0.5)
                .edgesIgnoringSafeArea(.all))
    }
}

struct MiscView_Previews: PreviewProvider {
    static var previews: some View {
        MiscView().preferredColorScheme(.dark)
    }
}
