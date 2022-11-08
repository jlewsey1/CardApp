//
//  AlternateArtBoxView.swift
//  CardApp
//
//  Created by Jacob Lewsey on 10/30/22.
//

import SwiftUI

struct AlternateArtBoxView: View {
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
            Text("Alternate Art Boxes")
                .offset(y:-20)
                .font(.system(size:24))
                .frame(maxWidth: .infinity)
                .foregroundColor(.white)
                .shadow(color: .red, radius: 5, x: 3, y: 3)
                .shadow(color: .red, radius: 5, x: -3, y: -3)
            Spacer()
                .frame(height: 50)
            VStack(spacing: 100){
                VStack{
                    ProductView(ProductImage: Image("FlareonAlt"), ProductImageContents: [Image("FlareonBoxContents")], ProductImageCards: [Image("AA1"), Image("AA2")], name: "Flareon VMAX Premium Collection Box", ProductContents: ["1 etched card featuring Flareon VMAX", "1 full-art card featuring Flareon V", "1 etched oversize card featuring Flareon VMAX, suitable for display", "1 colorful Flareon pin", "6 Pokémon TCG booster packs, each containing 10 cards and 1 basic Energy", "1 large metallic coin", "A code card for the Pokémon Trading Card Game Online"], color: fire)
                }
                VStack{
                    ProductView(ProductImage: Image("JolteonAlt"), ProductImageContents: [Image("JolteonBoxContents")], ProductImageCards: [Image("AA1"), Image("AA2")], name: "Jolteon VMAX Premium Collection Box", ProductContents: ["1 etched card featuring Jolteon VMAX", "1 full-art card featuring Jolteon V", "1 etched oversize card featuring Jolteon VMAX, suitable for display", "1 colorful Jolteon pin", "6 Pokémon TCG booster packs, each containing 10 cards and 1 basic Energy", "1 large metallic coin", "A code card for the Pokémon Trading Card Game Online"], color: electric)
                }
                VStack{
                    ProductView(ProductImage: Image("VaporeonAlt"), ProductImageContents: [Image("VaporeonBoxContents")], ProductImageCards: [Image("AA5"), Image("AA6")], name: "Vaporeon VMAX Premium Collection Box", ProductContents: ["1 etched card featuring Vaporeon VMAX", "1 full-art card featuring Vaporeon V", "1 etched oversize card featuring Vaporeon VMAX, suitable for display", "1 colorful Vaporeon pin", "6 Pokémon TCG booster packs, each containing 10 cards and 1 basic Energy", "1 large metallic coin", "A code card for the Pokémon Trading Card Game Online"], color: water)
                }
                VStack{
                    ProductView(ProductImage: Image("ArceusAlt"), ProductImageContents: [Image("ArceusAltContents")], ProductImageCards: [Image("AA7")], name: "Arceus Figure Collection Box", ProductContents: ["1 foil promo card featuring Arceus V", "1 sculpted Arceus figure", "4 Pokémon TCG booster packs", "A code card for Pokémon TCG Live"], color: normal)
                }
            }
        }
        .background(
            Image("Background3")
                .resizable()
                .scaledToFill()
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                .opacity(0.5)
                .edgesIgnoringSafeArea(.all))
    }
}

struct AlternateArtBoxView_Previews: PreviewProvider {
    static var previews: some View {
        AlternateArtBoxView().preferredColorScheme(.dark)
    }
}
