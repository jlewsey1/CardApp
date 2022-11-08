//
//  NewProductView.swift
//  CardApp
//
//  Created by Jacob Lewsey on 11/6/22.
//

import SwiftUI

struct NewProductView: View {
    @Binding var productName: String
    @Binding var productDescription: String
    var body: some View {
        NavigationView {
            Form {
                /*Section(header: Text("New Product")) { // (3)
                    TextField("Title", text: a) // (4)
                    TextField("Number of pages", value: a, formatter: NumberFormatter()) // (5)
                }
                
                Section(header: Text("Author")) { // (6)
                    TextField("Author", text: a) // (7)
                }*/
                Text("Product Name:")
                    .bold()
                TextField("", text: $productName)
                    .foregroundColor(.white)
                    .textFieldStyle(.plain)
                    .placeholder(when: productName.isEmpty) {
                        Text("Product Name")
                            .font(.system(size: 18))
                            .foregroundColor(.white)
                            .opacity(0.8)
                    }
                    .frame(height: 35)
                    .disableAutocorrection(true)
                    .autocapitalization(.none)
                
                Text("Product Description:")
                    .bold()
                TextField("", text: $productName)
                    .foregroundColor(.white)
                    .textFieldStyle(.plain)
                    .placeholder(when: productName.isEmpty) {
                        Text("Product Description")
                            .font(.system(size: 18))
                            .foregroundColor(.white)
                            .opacity(0.8)
                    }
                    .frame(height: 35)
                    .disableAutocorrection(true)
                    .autocapitalization(.none)
                Text("Product Images:")
                    .bold()
                /*
                 Have a button that adds to the total number of images that will be used
                 Then you can store have selectors to pick that many images to upload.
                 Or it can be they upload images here with as many as they want these images
                 will come with names that will be stored in an array of strings or whatever it is
                 then they can be pulled from the array to display on the loop with the first image
                 being the thumbnail image for the product
                 */
            }
            .navigationBarTitle("New Product", displayMode: .inline)
            .navigationBarItems(
                leading:
                    Button("Cancel"){},
                trailing:
                    Button("Done"){}
                    //.disabled(!viewModel.modified) // (8)
            )
        }
    }
    /*
    func handleCancelTapped() { // (9)
        dismiss()
    }
    
    func handleDoneTapped() { // (10)
        //self.viewModel.handleDoneTapped()
        dismiss()
    }
    
    func dismiss() { // (11)
        self.presentationMode.wrappedValue.dismiss()
    }*/
}

struct NewProductView_Previews: PreviewProvider {
    @State static var productName = ""
    @State static var productDescription = ""
    static var previews: some View {
        NewProductView(productName: $productName, productDescription: $productDescription).preferredColorScheme(.dark)
    }
}
