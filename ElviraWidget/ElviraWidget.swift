//
//  ElviraWidget.swift
//  ElviraWidget
//
//  Created by Kött Tibor on 2022. 04. 20..
//

import WidgetKit
import SwiftUI

struct Provider: TimelineProvider {
    
    var favoritesViewModel: FavoritesViewModel
    let dummyFavorite = Favorite(from: "--", to: "--", department: "--",arrival: "--",type: "Vonat")
    
    init(favoritesViewModel: FavoritesViewModel){
        self.favoritesViewModel = favoritesViewModel
        WidgetCenter.shared.reloadAllTimelines()
    }
    
    
    func placeholder(in context: Context) -> ElviraEntry {
        ElviraEntry(date: Date(),favorite: dummyFavorite)
    }

    func getSnapshot(in context: Context, completion: @escaping (ElviraEntry) -> ()) {
        let entry =  ElviraEntry(date: Date(), favorite: dummyFavorite)
        completion(entry)
    }

    func getDateFromDepartment(favorite: Favorite) -> Date {
        let hour = Int(favorite.department.components(separatedBy: ":")[0])!
        let minute = Int(favorite.department.components(separatedBy: ":")[1])!
        let date = Calendar.current.date(
            bySettingHour: hour,
            minute: minute,
            second: 0,
            of: Date()
        )!
        return date
        
    }
    func getTimeline(in context: Context, completion: @escaping (Timeline<Entry>) -> ()) {

        var entries: [ElviraEntry] = []
        var first: Bool = true
        
        for index in 0...favoritesViewModel.favorites.count-1{
            if favoritesViewModel.favorites[index].enabled && (getDateFromDepartment(favorite: favoritesViewModel.favorites[index]) > Date()){
                if(first){
                    let entry = ElviraEntry(
                        date: Date(),
                        favorite: favoritesViewModel.favorites[index]
                    )
                    entries.append(entry)
                    first = false
                }else{
                    let entry = ElviraEntry(
                        date: getDateFromDepartment(favorite: favoritesViewModel.favorites[index-1]).addingTimeInterval(60),
                        favorite: favoritesViewModel.favorites[index]
                    )
                    entries.append(entry)
                }
                
            }
        }
        
            
        let end = ElviraEntry(
            date: getDateFromDepartment(favorite: entries.last!.favorite).addingTimeInterval(60),
            favorite: dummyFavorite
        )
        entries.append(end)
        
  
        var dateComponents = DateComponents()
        dateComponents.year = Calendar.current.component(.year, from: Date())
        dateComponents.month = Calendar.current.component(.month, from: Date())
        dateComponents.day =  Calendar.current.component(.month, from: Date())+1
        dateComponents.hour = 0
        dateComponents.minute = 1
        
        let timeline = Timeline(
            entries: entries,
            policy: .after(Calendar.current.date(from: dateComponents)!)
        )
        completion(timeline)
    }
}

struct ElviraEntry: TimelineEntry {
    let date: Date
    let favorite: Favorite
}

struct ElviraWidgetEntryView : View {
    @Environment(\.widgetFamily) var widgetFamily
    var entry: Provider.Entry
    var favoritesViewModel: FavoritesViewModel
    
    var body: some View {
        VStack(alignment: .leading) {
            
            VStack (alignment: .leading) {
                VStack(alignment: .leading){
                    Text("Következő")
                    Text("vonat")
                }.padding(2)
            }
            .foregroundColor(Color("MAV-Widget"))
            .font(.title2.bold())
       
            HStack {
                VStack{
                    Image(systemName: "circle")
                        .foregroundColor(Color("MAV-Widget"))
                        //.scaleEffect(1.5,anchor: .topLeading)0
                    HStack{
                        Color("MAV-Widget").frame(width: 2, height: 10)
                    }
                    Image(systemName: "circle.fill")
                        .foregroundColor(Color("MAV-Widget"))
                        //.scaleEffect(1.5,anchor: .topLeading)
                }
                
                VStack(alignment: .leading){
                    Text(entry.favorite.from)
                        .padding(2)
                        .padding(.leading, 0)
                    Text(entry.favorite.to)
                        .padding(2)
                        .padding(.leading, 0)
                }
                .font(.subheadline.bold())
                
               
                Spacer()
                
                VStack(alignment: .trailing){
                    Text(entry.favorite.department)
                        .padding(2)
                        .padding(.leading, 0)
                    Text(entry.favorite.arrival)
                        .padding(2)
                        .padding(.leading, 0)
                }
                
                .font(.subheadline.bold())
            }
            
            Spacer()
        }
        .padding(6)
        .background(Color("MAV-White"))
        .onAppear{
            FavoritesViewModel.load { result in
                switch result {
                    case .failure(let error):
                        fatalError(error.localizedDescription)
                    case .success(let favorites):
                        favoritesViewModel.favorites = favorites
                    }
            }
        }
    }
}

@main
struct ElviraWidget: Widget {
    
    let kind: String = "ElviraWidget"
    var favoritesViewModel = FavoritesViewModel()
    
    var body: some WidgetConfiguration {
        StaticConfiguration(kind: kind, provider: Provider(favoritesViewModel: favoritesViewModel)) { entry in
            ElviraWidgetEntryView(entry: entry, favoritesViewModel: favoritesViewModel)
        }
        .supportedFamilies([.systemSmall])
        .configurationDisplayName("Elvira Widget")
        .description("Catch your next train.")
    }
}

struct ElviraWidget_Previews: PreviewProvider {
    static var favoritesViewModel = FavoritesViewModel()
    
    static var previews: some View {
        Group{
            ElviraWidgetEntryView(entry: ElviraEntry(date: Date(), favorite: Favorite(from: "Cegléd", to: "Zugló", department: "7:38",arrival: "8:30",type: "Gyors")), favoritesViewModel: favoritesViewModel)
                .previewContext(WidgetPreviewContext(family: .systemSmall))
        }
        
    }
}
