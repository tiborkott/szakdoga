//
//  HistoryView.swift
//  Elvira
//
//  Created by Kött Tibor on 2022. 04. 23..
//

import SwiftUI

struct HistoryView: View {
    @EnvironmentObject var searchViewModel : SearchViewModel
    @Binding var show: Bool
    @Binding var history: Set<Search>
     
    
    var body: some View {
        ZStack {
            if show{
                VStack(alignment: .center) {
                    Text("Keresési előzmények")
                        .foregroundColor(Color.white)
                        .font(.system(size: 18, weight: .bold))
                        .padding(.top, 10)
                    
                    List{
                        ForEach(Array(history), id: \.self) { search in
                            HStack {
                                Text(search.from)
                                    .padding()
                                Spacer()
                                Text(search.to)
                                    .padding()
                            }
                            .onTapGesture {
                                show.toggle()
                                searchViewModel.setSearchFields(from: search.from,to: search.to)
                            }

                            
                        }
                    }
                }
                .frame(width: UIScreen.main.bounds.size.width * 0.85)
                .frame(height: UIScreen.main.bounds.size.height * 0.5)
                .background(Color("MAV-Blue"))
                .clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
                .shadow(radius: 10)
                .offset(y: -130)
                .transition(.scale)
                
            }
        }
    }
}
