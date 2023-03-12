//
//  CardView.swift
//  Gimpass 1.0
//
//  Created by MORI on 2023/3/12.
//

import SwiftUI

struct CardView: View {
    
    @EnvironmentObject var model:ContentModel
    @State var tabSelectionIndex = 0
    @State var isDetailViewShowing = false
    
    var body: some View {
        
        let featuredDetails = model.details
        
        VStack(alignment: .leading, spacing: 0) {
        
            Text("Gimpass for Gifted Students")
                .bold()
                .padding(.leading)
                .padding(.top, 40)
                .font(Font.custom("Avenir Heavy", size: 24))
                
            
            GeometryReader { geo in
            
            TabView (selection:$tabSelectionIndex) {
                
                // Loop through each recipe
                ForEach (0..<4) { index in
                   
                    // Recipe card button
                    Button(action: {
                        
                        // Show the recipe detail sheet
                        self.isDetailViewShowing = true
                        
                    }, label: {
                        
                        // Recipe card
                        ZStack {
                            Rectangle()
                                .foregroundColor(.white)
                                
                            
                            VStack(spacing: 0) {
                                Image("IMG0")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .clipped()
                                Text("name")
                                    .padding(5)
                                    .font(Font.custom("Avenir", size: 15))
                            }
                        }
                        
                    })
                    .tag(index)
                    .buttonStyle(PlainButtonStyle())
                    .frame(width: geo.size.width - 40, height: geo.size.height - 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .cornerRadius(15)
                    .shadow(color: Color(.sRGB, red: 0, green: 0, blue: 0, opacity: 0.5), radius: 10, x: -5, y: 5)
                    
                    
                }
                
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
            
        }
        
            VStack (alignment: .leading, spacing: 10) {
                
               Text("You need to know:")
                    .font(Font.custom("Avenir Heavy", size: 16))
                Text(model.details.description)
                    .font(Font.custom("Avenir", size: 15))
                
                
            }
            .padding([.leading, .bottom])
        }
        .sheet(isPresented: $isDetailViewShowing) {
            // Show the Recipe Detail View
         
        }
    }
    
}

struct RecipeFeaturedView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
            .environmentObject(ContentModel())
    }
}
