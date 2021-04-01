//
//  ContentView.swift
//  AppWword4Kids
//  Created by MacBook on 2/5/21.
//

import SwiftUI

struct ContentView: View {
    @State var myImage : String = "1"

    var body: some View{
        NavigationView {
            
            
            VStack{
                
                Text("App Words for Kids")
                    .font(.largeTitle)
                Image("Appicon")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 250.0, height: 250.0, alignment: .center)
                    .padding()
                    
                   
                NavigationLink(destination:FirstScreenView()) {
                    Text("A to E")
                        .font(.title)
                        
                        .navigationBarTitle("Words" , displayMode: .inline)
                }
                
                NavigationLink(destination:SecondScreenView()) {
                    Text("F to J")
                        .font(.title)
                        .navigationBarTitle("2word" , displayMode: .inline)
                       

                }
                NavigationLink(destination:thirdScreenView()) {
                    Text("K to O")
                        .font(.title)
                        .navigationBarTitle("3word" , displayMode: .inline)
                }
                
                NavigationLink(destination:fourthScreenView()) {
                    Text("P to T")
                        .font(.title)
                        .navigationBarTitle("4word" , displayMode: .inline)
                }
                
                NavigationLink(destination:fifthScreenView()) {
                    Text("U to Z")
                        .font(.title)
                        .navigationBarTitle("5word" , displayMode: .inline)
                }
            }
            
            
        }
    }
}
struct FirstScreenView:View{
    
    @State var myImage : String = "1"

    var body: some View {
        
        NavigationView{
            VStack{
                Image(myImage).resizable().scaledToFit()

                Button("Tap Me")
                {
                    
                    myImage = String(Int.random(in:  1...5))
               
                }
                .padding()
                    .foregroundColor(.white)
                    .cornerRadius(40)
                .background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .top, endPoint: .bottom))
            }
        }
    }
}
struct SecondScreenView:View{
    
    @State var myImage : String = "6"

    var body: some View {
        
        NavigationView{
            VStack{Image(myImage).resizable().scaledToFit()
                
                Button("Tap Me")
                {
                    
                    myImage = String(Int.random(in:  6...10))
               
                }
                .padding()
                    .foregroundColor(.white)
                    .cornerRadius(40)
                .background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .top, endPoint: .bottom))

            }
        }
    }
}

struct thirdScreenView:View{
    @State var myImage : String = "11"

    var body: some View {
        
        NavigationView{
            VStack{Image(myImage).resizable().scaledToFit()
                
                Button("Tap Me")
                {
                    
                    myImage = String(Int.random(in:  11...15))
               
                }
                .padding()
                    .foregroundColor(.white)
                    .cornerRadius(40)
                .background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .top, endPoint: .bottom))

            }
        }
    }
}
struct fourthScreenView:View{
    @State var myImage : String = "16"

    var body: some View {
        
        NavigationView{
            VStack{Image(myImage).resizable().scaledToFit()
                
                Button("Tap Me")
                {
                    
                    myImage = String(Int.random(in:  15...20))
               
                }
                .padding()
                    .foregroundColor(.white)
                    .cornerRadius(40)
                .background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .top, endPoint: .bottom))
            }
        }
    }
}
struct fifthScreenView:View{
    @State var myImage : String = "21"

    var body: some View {
        
        NavigationView{
            VStack{Image(myImage).resizable().scaledToFit()
                
                Button("Tap Me")
                {
                    
                    myImage = String(Int.random(in:  20...26))
               
                }
                .padding()
                    .foregroundColor(.white)
                    .cornerRadius(40)
                .background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .top, endPoint: .bottom))
            
            }
        }
    }
}



 


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



