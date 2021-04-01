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
    @State var humanGuessnum : Int = 0
    @State var myMessage: String = ""
    @State var showAlert: Bool = false
    @State var totalNumberOfGuess = 3
    
    
    var body: some View {
        
        VStack
        {
            
           
            
            
            Text("What is your guess?")
            TextField("Enter the guessing number here", text: $humanGuess)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .border(Color.black, width: 1)
                .padding(30)
                .frame(height: 100)
            
            Button("Submit")
            {
                
                if(humanGuess != "")
                {
                    humanGuessnum = Int(humanGuess) ?? 0
                    
                    if(humanGuessnum > computerSc)
                    {
                        myMessage = " Your guess is too big"
                        totalNumberOfGuess -= 1
                        if totalNumberOfGuess == 0 {
                            myMessage = "You loose...correct guess was \(computerSc)"
                            
                            totalNumberOfGuess = 3
                        }
                    }
                    else if(humanGuessnum < computerSc)
                    {
                        myMessage = " Your guess is too small"
                        totalNumberOfGuess -= 1
                        if totalNumberOfGuess == 0 {
                            myMessage = "You loose...correct guess was \(computerSc)"
                            totalNumberOfGuess = 3
                        }
                    }
                    else
                    {
                        myMessage = " Your guess is correct"
                        totalNumberOfGuess = 3
                    }
                }
                else{
                    myMessage = " Please input a guess number "
                }
                
                showAlert = true
                
            }
            .alert(isPresented: $showAlert) {
                Alert(title: Text("Attempt " + String(totalNumberOfGuess)),
                      message: Text(myMessage),
                      dismissButton: .default(Text("Ok")))
            }
        }
        .onAppear(){
            computerSc = Int.random(in:  0...10)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}





