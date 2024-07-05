//  ToggleStyle.swift
//  CarbController
//
//  Created by Jason Fang on 7/4/24.
//

// Need to adjust all width by ratio, frame, offset x
import SwiftUI

struct CustomToggleStyle:ToggleStyle {
   func makeBody(configuration: Configuration) -> some View {
       // is like Bool true or false value
       ZStack{
           RoundedRectangle(cornerRadius: 20, style: .continuous)
               .frame(width: 100, height: 30)
               .foregroundColor(configuration.isOn ? Color("BL") : Color("BL"))
           RoundedRectangle(cornerRadius: 20, style: .continuous)
               .foregroundColor(configuration.isOn ? .white : .white)
               .frame(width: 50, height: 35)
           // if is configuration is true go to right or go to left
               .offset(x: configuration.isOn ? 25 : -25)
               .shadow(color: .black.opacity(0.1), radius: 5, x: 0, y: 0)
           HStack{
               Text("lbs")
                   .foregroundColor(configuration.isOn ? .gray : .black)
           Spacer()
               Text("kg")
                   .foregroundColor(configuration.isOn ? .black : .gray)
               
           }
           .frame(width: 67.5)
           
           
       }
       .onTapGesture {
           withAnimation(.easeInOut(duration: 0.2)) {
               configuration.isOn.toggle()
           }
       }
   }
}

