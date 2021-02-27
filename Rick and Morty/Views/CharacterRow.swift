//
//  CharacterRow.swift
//  Rick and Morty
//
//  Created by RANGA REDDY NUKALA on 27/02/21.
//

import SwiftUI
import SDWebImageSwiftUI

struct CharacterRow: View {
    // 1
    var character: RMCharacter
    
    var body: some View {
        // 2
        HStack {
            // 3
            WebImage(url: URL(string: character.image))
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50, alignment: .center)
                .clipShape(RoundedRectangle(cornerRadius: 20.0), style: FillStyle())
            // 4
            VStack(alignment: .leading) {
                Text(character.name)
                    .font(.title3)
                Text(character.species)
                    .font(.footnote)
                    .foregroundColor(.secondary)
            }
            Spacer()
        }
    }
}

struct CharacterRow_Previews: PreviewProvider {
    static var previews: some View {
        CharacterRow(character: rmCharacters[0])
    }
}
