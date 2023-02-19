//
//  HomePage.swift
//  Custom Camera
//
//  Created by Vickie Knight on 2/19/23.
//  Copyright © 2023 Mariam Sukiasyan. All rights reserved.
//

import SwiftUI

struct HomePage: View {
    @State private var searchText = ""
    @State private var idnum: String = ""
    @State private var color: String = ""
    @State private var shape: String = ""
    @State private var druginfo: String = ""
    
    var body: some View {
        NavigationView{
            VStack{
                // Drug Search
                HStack {
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.gray)
                    TextField("Drug Name", text: $searchText)
                        .foregroundColor(.gray)
                }
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(8)
                .padding([.leading, .trailing])
           
                
                // Identification Drop down menus
                HStack {
                    TextField("Identification #", text: $idnum)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    TextField("Color", text: $color)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    TextField("Shape", text: $shape)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }
                .padding([.leading, .trailing])
                .padding(.top, 20)
                
                // camera and barcode
                HStack {
                    Button(action: {
                        // action code
                    }) {
                        ZStack {
                            // cam
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(Color.blue)
                                .frame(width: 200, height: 150)
                            Image(systemName: "camera")
                                .foregroundColor(.white)
                                .font(.system(size: 50))
                        }
                    }
                    ZStack {
                        // barcode
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(Color.blue)
                            .frame(width: 200, height: 150)
                        Image(systemName: "magnifyingglass.circle.fill")
                            .foregroundColor(.white)
                            .font(.system(size: 50))

                    }
                    
                }
                .padding(.top, 20)
                .padding([.leading, .trailing])
                
                // drug info
                VStack(alignment: .center) {
                    VStack {
                        TextField("Welcome Back, Jane", text: $druginfo)
                            .font(.system(size: 20, weight: .bold))
                            .padding(EdgeInsets(top: 20, leading: 15, bottom: 10, trailing: 15))
                        TextField("My medications:", text: $druginfo)
                            .padding(EdgeInsets(top: 10, leading: 15, bottom: 5, trailing: 15))
                        TextField("Acetaminophen, 200 mg", text: $druginfo)
                            .multilineTextAlignment(.center)
                        TextField("Prozac, 20 mg", text: $druginfo)
                            .multilineTextAlignment(.center)
                        TextField("Bupropion XL, 150 mg", text: $druginfo)
                            .multilineTextAlignment(.center)
                        TextField("Metformin, 500 mg", text: $druginfo)
                            .multilineTextAlignment(.center)
                            .padding(EdgeInsets(top: 10, leading: 15, bottom: 20, trailing: 15))
                    }
              
                    .border(Color.blue, width: 5)
                    .padding([.leading, .trailing])
                    VStack(alignment: .center) {
                        TextField("Drugs A-Z", text: $druginfo)
                            .font(.system(size: 20, weight: .bold))
                            .padding(EdgeInsets(top: 20, leading: 15, bottom: 10, trailing: 15))
                          
                        TextField("Ingredients", text: $druginfo)
                            .font(.system(size: 20, weight: .bold))
                            .padding(EdgeInsets(top: 10, leading: 15, bottom: 10, trailing: 15))
                        TextField("Common Terms", text: $druginfo)
                            .font(.system(size: 20, weight: .bold))
                            .padding(EdgeInsets(top: 10, leading: 15, bottom: 20, trailing: 15))
                    }
                    .border(Color.blue, width: 5)
                    .padding([.leading, .trailing])
                }
                .padding(.top, 20)
            }
            
        }
    }
    
    
    struct HomePage_Previews: PreviewProvider {
        static var previews: some View {
            HomePage()
        }
    }
}
