//
//  NoSelectView.swift
//  CardApp
//
//  Created by Jacob Lewsey on 10/30/22.
//

import SwiftUI

struct NoSelectView: View {
    
    var body: some View {
        ScrollView(showsIndicators: false){
            VStack{
                HStack{
                    Text("")
                        .padding(5.0)
                }
            }
        }
    }
}

struct NoSelectView_Previews: PreviewProvider {
    static var previews: some View {
        NoSelectView()
    }
}
