//
//  ContentView.swift
//  Campus Connect
//
//  Created by Mostafa Elshenawy on 2/18/23.
//

import SwiftUI

struct ContentView: View {
    @State var selectedIndex = 0
    @State var filterIndex = 0
    let tabBarImageNames = ["Home", "Create", "Messages", "Account"]
    let filters = ["All", "Handyman", "Cleaning", "Tutoring", "Deliveries"]
    var columns = [GridItem(.adaptive(minimum:160 ), spacing:20)]
    
    var body: some View {
        VStack{
            ZStack{
                switch selectedIndex {
                case 0:
                    NavigationView {
                        ScrollView {
                            LazyVGrid(columns: columns, spacing: 0) {
                                ForEach(productList.filter { $0.tag == filters[filterIndex] || filterIndex == 0 }, id: \.id) { product in
                                    Product_Card(product: product)
                                }
                            }
                            .padding()
                        }
                        .navigationBarItems(trailing:
                            Picker(selection: $filterIndex, label: Text("Filter")) {
                                ForEach(0..<filters.count) {
                                    Text(filters[$0])
                                }
                            }
                            .pickerStyle(SegmentedPickerStyle())
                            .frame(width: 380)
                            .fixedSize(horizontal: true, vertical: false)
                            .lineLimit(1)
                        )
                    }
                case 1:
                    NavigationView {
                        ListingCreation()
                    }
                case 2: ScrollView{
                    Text("TEST2")
                }
                case 3: ScrollView{
                    Text("TEST3")
                }
                default:
                    Text("TEST4")
                }
            }
            Spacer()
            
            HStack{
                ForEach(0..<4) {num in
                    Button(action: {
                        selectedIndex = num
                    }, label: {
                        Spacer()
                        VStack{
                            Image(tabBarImageNames[num])
                                .resizable()
                                .frame(width: 30, height: 30)
                                .scaledToFit()
                            Text(tabBarImageNames[num])
                                .font(.system(size: 15))
                                .foregroundColor(.black)

                        }

                        Spacer()                    })
                }
                
                Spacer()
            }
            .padding(.horizontal)
        }
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
