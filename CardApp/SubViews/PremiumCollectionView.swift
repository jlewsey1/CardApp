//
//  PremiumCollectionView.swift
//  CardApp
//
//  Created by Jacob Lewsey on 10/30/22.
//

import SwiftUI

struct PremiumCollectionView: View {
    var body: some View {
        ZStack{
            ScrollView(showsIndicators: false){
                Text("Premium Collection Boxes")
                    .offset(y:-20)
                    .font(.system(size:24))
                    .frame(maxWidth: .infinity)
                    .foregroundColor(.white)
                    .shadow(color: .orange, radius: 5, x: 3, y: 3)
                    .shadow(color: .orange, radius: 5, x: -3, y: -3)
                Spacer()
                    .frame(height: 50)
                VStack(spacing: 100){
                    ProductView(ProductImage: Image("charizard"), ProductImageContents: [Image("charPromos"), Image("CharizardUPCContents2"), Image("CharizardUPCContents3"), Image("CharizardUPCContents4")], name: "Charizard Ultra-Premium Collection Box", ProductContents: ["3 etched foil promo cards: Charizard V, Charizard VMAX, and Charizard VSTAR", "1 playmat featuring Gigantamax Charizard", "65 card sleeves featuring Gigantamax Charizard", "1 metal coin featuring Gigantamax Charizard", "6 metal damage-counter dice", "2 metal condition markers", "1 acrylic VSTAR marker", "16 Pokémon TCG booster packs from the Sword & Shield Series", "A player’s guide to the entire Sword & Shield Series", "A code card for Pokémon TCG Live"], color: Color.orange)
                    ProductView(ProductImage: Image("XYT"), ProductImageCards: [Image("XYTC1"), Image("XYTC2"), Image("XYTC3"), Image("XYTC4"), Image("XYTC5"), Image("XYTC6"), Image("XYTC7"), Image("XYTC8"), Image("XYTC9"), Image("XYTC10"), Image("XYTC11"), Image("XYTC12"), Image("XYTC13"), Image("XYTC14")], name: "XY Trainer Premium Collection Box", ProductContents: ["12 more full-art foil promo cards including Aegislash-ex, Jirachi, N, and more!", "2 Pokémon TCG booster packs from the XY series. Also a metal coin featuring a Pikachu head and tail", "2 sets of 65 card sleeves featuring Xerneas and Yveltal", "A double deck Box featuring xerneas and Vestal with 2 sets of tournament-ready dice"], color: Color.orange)
                    ProductView(ProductImage: Image("SwShUPC"), ProductImageContents: [Image("SwShUPCContents")], ProductImageCards: [Image("promoZacianV"), Image("promoZamazentaV")], name: "Sword and Shield Ultra-Premium Collection Box", ProductContents: ["1 special gold version of Zacian V", "1 special gold version of Zamazenta V", "2 sets of metal damage-counter dice (12 dice in all)", "2 metal coins featuring Zacian and Zamazenta", "2 sets of card sleeves featuring Zacian and Zamazenta (130 sleeves in all)", "A set of richly designed metal condition markers", "16 Pokémon TCG booster packs from the Sword & Shield Series", "A player’s guide to the first year of Pokémon TCG: Sword & Shield Series expansions and promo cards", "A Pokémon TCG rules booklet", "A code card for the Pokémon Trading Card Game Online"], color: Color.orange)
                }
            }
        }
        .background(
            Image("Background5")
                .resizable()
                .scaledToFill()
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                .opacity(0.5)
                .edgesIgnoringSafeArea(.all))
    }
}

struct ProductView: View {
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
    
    var ProductImage: Image?
    var ProductImageContents: [Image]? = nil
    var ProductImageCards: [Image]? = nil
    var name: String
    var ProductContents: [String]
    var color: Color
    
    var body: some View {
        VStack{
            NavigationLink(destination: ProductDescriptionView(ProductImage: ProductImage, ProductImageContents: ProductImageContents, ProductImageCards: ProductImageCards, name: name, ProductContents: ProductContents, color: color), label: {
                ProductImage?
                    .renderingMode(.original)
                    .resizable()
                    .frame(width:175, height:175)
                    .padding(5.0)
                    .shadow(color: color, radius: 10)
            })
            NavigationLink(destination: ProductDescriptionView(ProductImage: ProductImage, ProductImageContents: ProductImageContents, ProductImageCards: ProductImageCards, name: name, ProductContents: ProductContents, color: color), label: {
                Text(name)
                    .font(.system(size: 16))
                    .multilineTextAlignment(.center)
                    .frame(maxWidth: 175, maxHeight: 75)
                    .foregroundColor(.white)
                    .shadow(color: color, radius: 5, x: 3, y: 3)
                    .shadow(color: color, radius: 5, x: -3, y: -3)
            })
        }
    }
}

struct ProductDescriptionView: View {
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
    
    var ProductImage: Image?
    var ProductImageContents: [Image]? = nil
    var ProductImageCards: [Image]? = nil
    var name: String
    var ProductContents: [String]
    
    @State private var showWebViewActive = false
    @State private var showWebViewSold = false
    var urlFirstCurrent = "https://www.ebay.com/sch/i.html?_from=R40&_trksid=p2380057.m570.l1313&_nkw="
    var urlEndCurrent = "&_sacat=0"
    var urlFirstSold = "https://www.ebay.com/sch/i.html?_from=R40&_nkw="
    var urlEndSold = "&_in_kw=1&_ex_kw=&_sacat=0&LH_Sold=1&_udlo=&_udhi=&_samilow=&_samihi=&_sadis=15&_stpos=94582&_sargn=-1%26saslc%3D1&_salic=1&_sop=7&_dmd=1&_ipg=60&LH_Complete=1"
    var color: Color
    
    var body: some View {
        ScrollView(showsIndicators: false){
            VStack{
                Text(name)
                    .font(.system(size: 25))
                    .padding()
                    .bold()
                    .foregroundColor(.white)
                    .shadow(color: color, radius: 5, x: 3, y: 3)
                    .shadow(color: color, radius: 5, x: -3, y: -3)
                    .multilineTextAlignment(.center)
                ScrollView(.horizontal){
                    HStack{
                        ProductImage?
                            .renderingMode(.original)
                            .resizable()
                            .frame(width:175, height:175)
                            .padding(5.0)
                            .shadow(color: color, radius: 10)
                        if(ProductImageContents != nil){
                            ForEach(0..<ProductImageContents!.count, id: \.self) { imageIndex in
                                ProductImageContents![imageIndex]
                                    .renderingMode(.original)
                                    .resizable()
                                    .frame(width:175, height:175)
                                    .padding(5.0)
                                    .shadow(color: color, radius: 10)
                            }
                        }
                        if(ProductImageCards != nil){
                            ForEach(0..<ProductImageCards!.count, id: \.self) { imageIndex in
                                ProductImageCards![imageIndex]
                                    .renderingMode(.original)
                                    .resizable()
                                    .frame(width:122, height:175)
                                    .padding(5.0)
                                    .shadow(color: color, radius: 10)
                            }
                        }
                    }
                }
                .padding()
                Text("Contains:")
                    .padding(.top)
                    .padding(.bottom)
                    .frame(maxWidth: .infinity, alignment: .leading)
                VStack{
                    ForEach(0..<ProductContents.count, id: \.self) { contentsIndex in
                        Text(ProductContents[contentsIndex])
                            .padding(1)
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                }
                
                Button("View Active Listings") {
                    showWebViewActive.toggle()
                }
                .buttonStyle(ListingsButton(color: color))
                .sheet(isPresented: $showWebViewActive) {
                    let urlSearch = name.replacingOccurrences(of: " ", with: "+", options: .literal, range: nil)
                    let url = urlFirstCurrent + urlSearch + urlEndCurrent
                    WebView(url: URL(string: url)!)
                }
                .padding()
                .offset(y: 30)
                
                Button("View Sold Listings") {
                    showWebViewSold.toggle()
                }
                .buttonStyle(ListingsButton(color: color))
                .sheet(isPresented: $showWebViewSold) {
                    let urlSearch = name.replacingOccurrences(of: " ", with: "+", options: .literal, range: nil)
                    let url = urlFirstSold + urlSearch + urlEndSold
                    WebView(url: URL(string: url)!)
                }
                .offset(y: 30)
                Spacer()
                    .frame(height: 50)
            }
        }
    }
}

struct PremiumCollectionView_Previews: PreviewProvider {
    static var previews: some View {
        PremiumCollectionView().preferredColorScheme(.dark)
    }
}
