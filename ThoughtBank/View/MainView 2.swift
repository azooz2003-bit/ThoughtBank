//
//  MainView.swift
//  ThoughtBank
//
//  Created by Songyuan Liu on 10/29/23.
//

import SwiftUI

enum LandingPageOption {
    case Public, Personal, Saved
}

struct MainView<ViewModel: ViewModelProtocol>: View {
    @EnvironmentObject var viewModel: ViewModel
    @State var landingPageOption: String
    
    let LandingPageOptions = ["Public", "Personal", "Saved"]

    var body: some View {
        NavigationStack {
            Divider()
            VStack {
                Picker("hello", selection: $landingPageOption) {
                    ForEach(LandingPageOptions, id: \.self) {
                        Text($0)
                    }
                }
                .pickerStyle(.segmented)
            }
            .frame(minWidth: 0, maxWidth: 350, minHeight: 0, maxHeight: 50)
            
            TabView {
                MainFeedView<CentralViewModel>()
                    .tabItem {
                        Label("Browse", systemImage: "magnifyingglass.circle")
                    }
                
                DepositedThoughtsView<CentralViewModel>()
                    .tabItem {
                        Label("My Notes", systemImage: "house")
                    }
                
                AddThoughtsView<CentralViewModel>()
                    .tabItem {
                        Label("Share", systemImage: "square.and.arrow.up")
                    }
                
                LandingPageView<CentralViewModel>()
                    .tabItem {
                        Label("Search", systemImage: "magnifyingglass")
                    }
                
                SettingsView<CentralViewModel>()
                    .tabItem {
                        Label("Settings", systemImage: "gearshape")
                    }
            }
            .toolbar {
                Button {
                    
                } label: {
                    Label("Bookmark", systemImage: "textformat.size")
                        
                }
            }
            .toolbar {
                Button {
                    
                } label: {
                    Label("Bookmark", systemImage: "speaker.wave.2")
                }
            }
            .toolbar {
                Button {
                    
                } label: {
                    Label("Bookmark", systemImage: "bookmark")
                }
                
            }

        }
        
        
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView<PreviewViewModel>(landingPageOption: "Public").environmentObject(PreviewViewModel())
    }
}
