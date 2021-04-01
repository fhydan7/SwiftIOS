//
//  ContentView.swift
//  guess game
//
//  Created by MacBook on 3/3/21.
//


import SwiftUI

struct ContentView: View {

    var body: some View{
        NavigationView {
            
            
            VStack{
                
                Text("Welcome to Simple Guessing app")
                    .font(.largeTitle)
                Image("guessing")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 250.0, height: 250.0, alignment: .center)
                    .padding()
                    
                   
                NavigationLink(destination:FirstScreenView()) {
                    Text("Make a guess")
                        .font(.title)
                        
                        .navigationBarTitle("" , displayMode: .inline)
                }

            }
            
            
        }
    }
}




struct FirstScreenView:View{
    @State var computerSc:Int = Int.random(in:  0...10)
    @State var humanGuess: String = ""
    @State var myMessage: String = ""
    @State var showAlert: Bool = false
    
    var body: some View {
        
        VStack
    {
           

    Text("What is your guess?")
    TextField("Enter the guessing number here", text: $humanGuess)
    .border(Color.black, width: 1
)
    .padding(30)
    
        
        
        Button("Submit!")
    {

        
        
        
    if(humanGuess == "") {
    myMessage = "Please enter guessing number!"
    }
            
    if(humanGuess == computerSc)
    {
        
    }
   
    
    
        
        showAlert = true


        
        
    }
        
    .alert(isPresented: $showAlert) {
    Alert(title: Text("Important message"),
    message: Text("Good guess!"),
    dismissButton: .default(Text("Ok")))
                                    }
        
    }
        Text(myMessage)
    }
    }





 


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}




