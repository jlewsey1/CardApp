//
//  CardViewSelector.swift
//  CardApp
//
//  Created by Jacob Lewsey on 10/30/22.
//

import SwiftUI

struct CardViewSelector: View {
    let pages = ["Singles Menu", "Secret Rare", "Full Art", "Full Art Trainer", "Alternate Art", "Character Rare", "Unique", "Hidden Fates", "Shining Fates"]
    @State private var selectedPage = "Singles Menu"
    
    var body: some View {
        ZStack{
            VStack{
                Menu {
                    Picker("Pages", selection: $selectedPage) {
                        ForEach(pages, id: \.self) {
                            Text($0)
                        }
                    }
                    .labelsHidden()
                    .pickerStyle(InlinePickerStyle())
                }
            label: {
                Button(action: {print("")}) {
                    Text(selectedPage)
                        .padding(3)
                        .frame(minWidth: 200)
                        .foregroundColor(Color.black)
                        .border(Color.black, width: 1)
                        .padding(3)
                        .background(Color.white)
                        .shadow(color: Color.yellow, radius: 3)
                        .offset(y: -5)
                }
            }
                
                
                
                if (selectedPage == "Singles Menu"){
                    NoSelectView()
                }
                else if (selectedPage == "Secret Rare"){
                    SecretRareView()
                }
                else if (selectedPage == "Character Rare"){
                    CharacterRareView()
                }
                else if (selectedPage == "Alternate Art"){
                    AlternateArtCardView()
                }
                else if (selectedPage == "Unique"){
                    UniqueCardView()
                }
                else if (selectedPage == "Full Art"){
                    FullArtCardView()
                }
                else if (selectedPage == "Full Art Trainer"){
                    FullArtTrainerCardView()
                }
                else if (selectedPage == "Hidden Fates"){
                    HFCardView()
                }
                else if (selectedPage == "Shining Fates"){
                    SFCardView()
                }
            }
            .background(
                Image("Background1")
                    .resizable()
                    .scaledToFill()
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                    .opacity(0.50)
                    .edgesIgnoringSafeArea(.all))
        }
    }
}

struct cardView: View {
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
    
    @State private var showWebViewActive = false
    @State private var showWebViewSold = false
    var urlFirstCurrent = "https://www.ebay.com/sch/i.html?_from=R40&_trksid=p2380057.m570.l1313&_nkw="
    var urlEndCurrent = "&_sacat=0"
    var urlFirstSold = "https://www.ebay.com/sch/i.html?_from=R40&_nkw="
    var urlEndSold = "&_in_kw=1&_ex_kw=&_sacat=0&LH_Sold=1&_udlo=&_udhi=&_samilow=&_samihi=&_sadis=15&_stpos=94582&_sargn=-1%26saslc%3D1&_salic=1&_sop=7&_dmd=1&_ipg=60&LH_Complete=1"
    var image: Image?
    var name: String
    var color: Color
    var type: String
    var cardNumber: String? = nil
    var setName: String? = nil
    
    
    var body: some View {
        ScrollView(showsIndicators: false){
            VStack(spacing: 25){
                image?
                    .renderingMode(.original)
                    .resizable()
                    .frame(width:210, height:300)
                    .padding(5.0)
                    .shadow(color: color, radius: 20)
                HStack{
                    Text("Pokémon: ")
                        .font(.system(size: 16))
                        .monospaced()
                        .shadow(color: .yellow, radius: 5, y: 1)
                        .shadow(color: .yellow, radius: 5, y: -1)
                    Text(name)
                        .bold()
                        .font(.system(size: 18))
                        .monospaced()
                        .shadow(color: color, radius: 5, y: 3)
                        .shadow(color: color, radius: 5, y: -3)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .offset(x: 10)
                HStack{
                    Text("Type:    ")
                        .font(.system(size: 16))
                        .monospaced()
                        .shadow(color: .yellow, radius: 5, y: 1)
                        .shadow(color: .yellow, radius: 5, y: -1)
                    Text(type)
                        .bold()
                        .font(.system(size: 18))
                        .monospaced()
                        .foregroundColor(color)
                        .shadow(color: .white, radius: 10)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .offset(x: 10)
                if (cardNumber != nil){
                    HStack{
                        Text("Number:  ")
                            .font(.system(size: 16))
                            .monospaced()
                            .shadow(color: .yellow, radius: 5, y: 1)
                            .shadow(color: .yellow, radius: 5, y: -1)
                        Text(cardNumber!)
                            .bold()
                            .font(.system(size: 18))
                            .monospaced()
                            .foregroundColor(.white)
                            .shadow(color: color, radius: 5, y: 1)
                            .shadow(color: color, radius: 5, y: -1)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .offset(x: 10)
                }
                if (setName != nil){
                    HStack{
                        Text("Set:     ")
                            .font(.system(size: 16))
                            .monospaced()
                            .shadow(color: .yellow, radius: 5, y: 1)
                            .shadow(color: .yellow, radius: 5, y: -1)
                        Text(setName!)
                            .bold()
                            .font(.system(size: 18))
                            .monospaced()
                            .foregroundColor(.white)
                            .shadow(color: color, radius: 5, y: 1)
                            .shadow(color: color, radius: 5, y: -1)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .offset(x: 10)
                }
                
                // eBay part
                Button("View Active Listings") {
                    showWebViewActive.toggle()
                }
                .buttonStyle(ListingsButton(color: color))
                .sheet(isPresented: $showWebViewActive) {
                    if (setName != nil){
                        let searchName = setName! + " " + name
                        let urlSearch = searchName.replacingOccurrences(of: " ", with: "+", options: .literal, range: nil)
                        if (cardNumber != nil){
                            let cardNumber = cardNumber!.replacingOccurrences(of: "/", with: "%2F", options: .literal, range: nil)
                            let url = urlFirstCurrent + urlSearch + "+" + cardNumber + urlEndCurrent
                            WebView(url: URL(string: url)!)
                        }
                        else{
                            let url = urlFirstCurrent + urlSearch + urlEndCurrent
                            WebView(url: URL(string: url)!)
                        }
                    }
                    else{
                        let searchName = name
                        let urlSearch = searchName.replacingOccurrences(of: " ", with: "+", options: .literal, range: nil)
                        if (cardNumber != nil){
                            let cardNumber = cardNumber!.replacingOccurrences(of: "/", with: "%2F", options: .literal, range: nil)
                            let url = urlFirstCurrent + urlSearch + "+" + cardNumber + urlEndCurrent
                            WebView(url: URL(string: url)!)
                        }
                        else{
                            let url = urlFirstCurrent + urlSearch + urlEndCurrent
                            WebView(url: URL(string: url)!)
                        }
                    }
                }
                
                Button("View Sold Listings") {
                    showWebViewSold.toggle()
                }
                .buttonStyle(ListingsButton(color: color))
                .sheet(isPresented: $showWebViewSold) {
                    if (setName != nil){
                        let searchName = setName! + " " + name
                        let urlSearch = searchName.replacingOccurrences(of: " ", with: "+", options: .literal, range: nil)
                        if (cardNumber != nil){
                            let cardNumber = cardNumber!.replacingOccurrences(of: "/", with: "%2F", options: .literal, range: nil)
                            let url = urlFirstSold + urlSearch + "+" + cardNumber + urlEndSold
                            WebView(url: URL(string: url)!)
                        }
                        else{
                            let url = urlFirstSold + urlSearch + urlEndSold
                            WebView(url: URL(string: url)!)
                        }
                    }
                    else{
                        let searchName = name
                        let urlSearch = searchName.replacingOccurrences(of: " ", with: "+", options: .literal, range: nil)
                        if (cardNumber != nil){
                            let cardNumber = cardNumber!.replacingOccurrences(of: "/", with: "%2F", options: .literal, range: nil)
                            let url = urlFirstSold + urlSearch + "+" + cardNumber + urlEndSold
                            WebView(url: URL(string: url)!)
                        }
                        else{
                            let url = urlFirstSold + urlSearch + urlEndSold
                            WebView(url: URL(string: url)!)
                        }
                    }
                }
            }
        }
        .background(
            Image("Background1")
                .resizable()
                .scaledToFill()
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                .opacity(0.25)
                .edgesIgnoringSafeArea(.all))
    }
}

struct singleCardView: View {
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
    
    var image: Image?
    var name: String
    var color: Color
    var type: String
    var cardNumber: String? = nil
    var setName: String? = nil
    
    var body: some View {
        VStack{
            NavigationLink(destination: cardView(image: image, name: name, color: color, type: type, cardNumber: cardNumber, setName: setName), label: {
                image?
                    .renderingMode(.original)
                    .resizable()
                    .frame(width:105, height:150)
                    .padding(5.0)
                    .shadow(color: color, radius: 6)
            })
            NavigationLink(destination: cardView(image: image, name: name, color: color, type: type, cardNumber: cardNumber, setName: setName), label: {
                Text(name)
                    .font(.system(size: 14))
                    .shadow(color: color, radius: 5, x: 3, y: 3)
                    .shadow(color: color, radius: 5, x: -3, y: -3)
                    .frame(width: 120, height: 35)
            })
        }
        .foregroundColor(.white)
    }
}

struct ListingsButton: ButtonStyle {
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
    
    var color: Color
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .font(.system(size: 15, weight: .bold))
            .foregroundColor(.black.opacity(0.75))
            .shadow(color: color, radius: 3)
            .frame(width: 250, height: 30)
            .background(.white)
            .cornerRadius(10)
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(color, lineWidth: 5))
    }
}


struct CardViewSelector_Previews: PreviewProvider {
    static var previews: some View {
        CardViewSelector().preferredColorScheme(.dark)
    }
}
