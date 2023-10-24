//
//  DepositedThoughtsView.swift
//  ThoughtBank
//
//  Created by Noah Sadir on 10/17/23.
//
//  Contributors:
//  [YOUR NAME HERE]
//
//  --- NOTE ---
//  This view should only deal with UI logic.
//  Actual data logic should be handled in CentralViewModel.
//

import SwiftUI

struct DepositedThoughtsView<ViewModel: ViewModelProtocol>: View {
    @EnvironmentObject var viewModel: ViewModel
    
    @State var thoughts: [Thought] = [];
    
    var body: some View {
        VStack {
            ForEach(thoughts, id: \.documentID) { thought in
                Text(thought.content)
            }
            HStack {
                VStack {
                    Button(action: {
                        print("Left")
                    }) {
                        Image(systemName: "chevron.left")
                            .cornerRadius(10)
                    }
                    Text("Left")
                }
                VStack {
                    Button(action: {
                        print("Add thought")
                    }) {
                        Image(systemName: "plus.circle.fill")
                            .cornerRadius(10)
                    }
                    Text("Add Thought")
                }
                VStack {
                    Button(action: {
                        print("Right")
                    }) {
                        Image(systemName: "chevron.right")
                            .cornerRadius(10)
                    }
                    Text("Right")
                }

            }
            
        }
        
    }
    
}

struct DepositedThoughtsView_Previews: PreviewProvider {
    static var previews: some View {
        DepositedThoughtsView<PreviewViewModel>().environmentObject(PreviewViewModel())
    }
}
