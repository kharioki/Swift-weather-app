//
//  HomeView.swift
//  Weather
//
//  Created by Tony Kharioki on 14/02/2023.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            // MARK: Background Color
            Color.background
                .ignoresSafeArea()
            
            // MARK: Background Image
            Image("Background")
                .resizable()
                .ignoresSafeArea()
            
            // MARK: House Image
            Image("House")
                .frame(maxHeight: .infinity, alignment: .top)
                .padding(.top, 257)
            
            VStack(spacing: -10) {
                Text("Nairobi")
                    .font(.largeTitle)
                
                VStack {
//                    Text("19°")
//                        .font(.system(size: 96, weight: .thin))
//                        .foregroundColor(.primary)
//                    +
//                    Text("\n ")
//                    +
//                    Text("Mostly Clear")
//                        .font(.title3.weight(.semibold))
//                        .foregroundColor(.secondary)
                    Text(attributedString)
                    
                    Text("H:27°  L:18°")
                        .font(.title3.weight(.semibold))
                }
                
                Spacer()
            }
            .padding(.top, 51)
        }
    }
    
    private var attributedString: AttributedString {
        var string = AttributedString("26°" + "\n" + "Mostly Clear")
        
        if let temp = string.range(of: "26") {
            string[temp].font = .system(size: 96, weight: .thin)
            string[temp].foregroundColor = .primary
        }
        
        if let pipe = string.range(of: " | ") {
            string[pipe].font = .title3.weight(.semibold)
            string[pipe].foregroundColor = .secondary
        }
        
        if let weather = string.range(of: "Mostly Clear") {
            string[weather].font = .title3.weight(.semibold)
            string[weather].foregroundColor = .secondary
        }
        
        return string
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .preferredColorScheme(.dark)
    }
}
