//
//  TestingView.swift
//  ThoughtBank
//
//  Created by Abdulaziz Albahar on 11/2/23.
//

import SwiftUI

struct TestingView<ViewModel: ViewModelProtocol>: View {
    @EnvironmentObject var vm: ViewModel
    
    var body: some View {
        
        VStack {
            Text("Hello, World!")
            
            Button("Test", action: {
                
               addUserTest()
               
            })
        }
        
        
        
    }
    
    
    
    func addUserTest() {
        Task {
            try await FirebaseManager.manager.addUser(alias: "testAlias", userID: "fjkrehjgkue", email: "tuan@gmail.com", ownedThoughts: [], depositedThoughts: [], viewedThoughts: [])
        }
    }
}

struct TestingView_Previews: PreviewProvider {
    static var previews: some View {
        TestingView<PreviewViewModel>().environmentObject(CentralViewModel())
    }
}
