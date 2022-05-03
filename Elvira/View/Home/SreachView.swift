//
//  SreachView.swift
//  Elvira
//
//  Created by Kött Tibor on 2022. 02. 23..
//

//https://apiv2.oroszi.net/elvira?from=Cegléd&to=Zugló&date=2022.02.23

import SwiftUI

struct SearchView: View {
    @Environment(\.scenePhase) private var scenePhase
    @ObservedObject var networkManeger = NetworkManager()
    @EnvironmentObject var searchViewModel : SearchViewModel
    @EnvironmentObject var trainListViewModel: TrainListViewModel
    let saveAction: ()->Void
    
    var body: some View {
            ZStack {
                VStack{
                    Text("Menetrend")
                        .font(.system(size: 20, weight: .bold))
                        .frame(width: UIScreen.main.bounds.size.width * 0.9,
                                height: UIScreen.main.bounds.size.height * 0.1)
                        .background(Color("MAV-Blue"))
                        .foregroundColor(Color.white)
                       
                    VStack{
                        TextField("Honnan?",text: $searchViewModel.from)
                            .padding()
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                                
                        TextField("Hova?",text: $searchViewModel.to)
                            .padding()
                            .padding(.bottom, 50)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                        }
                    
                       
                    HStack{
                        NavigationLink(destination: TrainListView(from: searchViewModel.from, to: searchViewModel.to)) {
                            Text("Keresés")
                                .frame(width: UIScreen.main.bounds.size.width * 0.5,
                                        height: UIScreen.main.bounds.size.height * 0.05)
                                .background(Color("MAV-Yellow"))
                                .font(.system(size: 16, weight: .bold))
                                .foregroundColor(Color.black)
                                .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
                                .padding(.bottom, 20)
                                .padding(.leading, 20)
                        }
                        .simultaneousGesture(TapGesture().onEnded{
                            searchViewModel.addSearchToHistory(from: searchViewModel.from, to: searchViewModel.to)
                            trainListViewModel.loaded = false
                            trainListViewModel.fetchElvira(from: searchViewModel.from, to: searchViewModel.to)
                            searchViewModel.setSearchFields(from: "",to: "")
                        })
                        .disabled(networkManeger.notConnected)
                        .disabled(!searchViewModel.isSreachable() )
                        .disabled(searchViewModel.historyShow)
                        Button{
                            //view history list in view
                            withAnimation {
                                searchViewModel.historyShow.toggle()
                            }
                        } label: {
                            Image(systemName: "clock").foregroundColor(Color("MAV-Black"))
                                .padding(0)
                                .padding(.leading, 20)
                                .padding(.bottom, 20)
                                .scaleEffect(1.2)
                        }
                       
                    }
                        
                }
                .frame(width: UIScreen.main.bounds.size.width * 0.9)
                .background(Color("MAV-White") )
                .clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
                .shadow(radius: 10)
                .padding(.bottom, 100)
                .padding(.leading, UIScreen.main.bounds.size.width * 0.05)
                .padding(.trailing, UIScreen.main.bounds.size.width * 0.05 )
                
                HistoryView(show: $searchViewModel.historyShow, history: $searchViewModel.history)
                    
            
        }.onChange(of: scenePhase) { phase in
            if phase == .inactive {
                saveAction()
            }
        }
    }
}
