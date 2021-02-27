//
//  CharacterDetail.swift
//  Rick and Morty
//
//  Created by RANGA REDDY NUKALA on 28/02/21.
//




import SwiftUI
import SDWebImageSwiftUI

struct CharacterDetail: View {
    // 1
    var character: RMCharacter
    
    var body: some View {
        List {
            // 2
            Section(header: Text("Mugshot"), content: {
                HStack {
                    Spacer()
                    WebImage(url: URL(string: character.image))
                        .resizable()
                        .scaledToFit()
                        .frame(width: 150, height: 150, alignment: .center)
                        .clipShape(RoundedRectangle(cornerRadius: 52.0), style: FillStyle())
                    Spacer()
                }
            })
            
            // 3
            Section(header: Text("Info"), content: {
                CharacterInfoRow(icon: "hare", title: "Species", value: character.species)
                CharacterInfoRow(icon: "eyes", title: "Gender", value: character.species)
                CharacterInfoRow(icon: "waveform.path.ecg.rectangle", title: "Status", value: character.status)
                CharacterInfoRow(icon: "map", title: "Location", value: character.location.name)
                CharacterInfoRow(icon: "paperplane", title: "Origin", value: character.origin.name)
            })
        }// 4
        .listStyle(GroupedListStyle())
        .navigationTitle(character.name)
        
    }
}


struct CharacterInfoRow: View {
    
    var icon: String
    var title: String
    var value: String
    
    var body: some View {
        
        HStack{
            Image(systemName: icon)
                .foregroundColor(.accentColor)
            Text(title)
                .font(.body)
                .foregroundColor(.accentColor)
            Spacer()
            Text(value)
        }
    }
}

struct CharacterDetail_Previews: PreviewProvider {
    static var previews: some View {
        CharacterDetail(character: rmCharacters[0])
    }
}
