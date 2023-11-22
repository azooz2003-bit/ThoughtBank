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
            Text("Test review Moderation hihi")
            
            Button("Test", action: {
                
               addUserTest()
               
            })
        }
        
        
        
    }
    
    
    
    func addUserTest() {
        Task {
             await FirebaseManager.manager.reviewModeration(userThought: "I love you and your dog")
        }
    }
}

struct TestingView_Previews: PreviewProvider {
    static var previews: some View {
        TestingView<PreviewViewModel>().environmentObject(CentralViewModel())
    }
}
