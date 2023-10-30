//
//  SettingsView.swift
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

struct SettingsView<ViewModel: ViewModelProtocol>: View {
    @EnvironmentObject var viewModel: ViewModel
    
    var body: some View {
        VStack {
            Text(viewModel.description)
            Text("This is SettingsView")
        }
        
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView<PreviewViewModel>().environmentObject(PreviewViewModel())
    }
}
