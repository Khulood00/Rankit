//
//  InterestPage.swift
//  Rankit
//
//  Created by Rand AlMuhanna on 01/04/1444 AH.
//

import SwiftUI
struct InterestPage : View {
    
    let words = ["Tech Camp", "Events", "Art", "Sport", "Beauty", "Music", "Game", "Business", "Cultural", "Fashion"]
    
    let LableImages = ["Tech Camp", "Events", "Art", "Sport", "Beauty", "Music", "Game", "Business", "Cultural", "Fashion"]

    var body: some View {
        TagsView(items: words)
    }
}

struct InterestPage_Previews: PreviewProvider {
    static var previews: some View {
        InterestPage()
    }
}
struct TagsView: View {
    @State var isPresenting = false
    
    let items: [String]
    var groupedItems: [[String]] = [[String]]()
    let screenWidth = UIScreen.main.bounds.width
    
    init(items: [String]) {
        self.items = items
        self.groupedItems = createGroupedItems(items)
    }
    
    private func createGroupedItems(_ items: [String]) -> [[String]] {
        
        var groupedItems: [[String]] = [[String]]()
        var tempItems: [String] =  [String]()
        var width: CGFloat = 0
        
        for word in items {
            
            let label = UILabel()
            label.text = word
            label.sizeToFit()
            
            let labelWidth = label.frame.size.width + 32
            
            if (width + labelWidth + 55) < screenWidth {
                width += labelWidth
                tempItems.append(word)
            } else {
                width = labelWidth
                groupedItems.append(tempItems)
                tempItems.removeAll()
                tempItems.append(word)
            }
            
        }
        
        groupedItems.append(tempItems)
        return groupedItems
        
    }
    
    var body: some View {
        NavigationView{
            ZStack{
                VStack{
                    HStack{
                        Spacer()
                            .padding(30)
                        NavigationLink {HomePage().navigationBarBackButtonHidden(true)}
                    label: {
                        Text("Skip")
                            .fontWeight(.medium)
                            .foregroundColor(Color(red: 94/255, green: 126/255, blue: 152/255))
                            .font(.title2)
                    }
                    }
                    .padding(30)
                    Text("Select Your Interest")
                        .fontWeight(.medium)
                        .multilineTextAlignment(.center)
                        .font(.title)
                        .padding(.bottom, 70)
                    
                    
                    ScrollView {
                            
                            ForEach(groupedItems, id: \.self) { subItems in
                                HStack {
                                    ForEach(subItems, id: \.self) { word in
                                        Text(word)
                                            .fixedSize()
                                            .padding()
                                            .foregroundColor(.white)
                                            .background(Image("Group")
                                            .resizable()
                                                    )
                                            .clipShape(RoundedRectangle(cornerRadius: 10.0, style: .continuous))
                                        
                                    }
                                }
                        }
                    }
                    VStack{
                        Button("LET'S GO!") {
                                            isPresenting = true
                                        }.frame(width: 300)
                            .font(.title)
                            .fontWeight(.medium)
                            .padding(7)
                            .foregroundColor(.white)
                            .background(Color(red: 94/255, green: 126/255, blue: 152/255))
                            .cornerRadius(14)
                                        NavigationLink(destination: HomePage().navigationBarBackButtonHidden(true), isActive: $isPresenting) { }
                            
                                    
                    } .padding(.bottom, 200.0)
                           
                        }
                        
                    }
                   
                }
                
            }
        }
        
    
