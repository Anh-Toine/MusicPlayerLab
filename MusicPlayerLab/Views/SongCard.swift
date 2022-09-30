//
//  SongCard.swift
//  MusicPlayerLab
//
//  Created by Lukas Nguyen on 2022-09-20.
//

import SwiftUI

struct SongCard: View {
	
	@StateObject var musicEngine: MusicEngine = MusicEngine()

	var imageText: String
	var songText: String
	var artistName: String
	
	var body: some View {
		Button(action: {
			musicEngine.loadAndPlay(fileName: songText, fileType: "mp3")
		}, label: {
			ZStack {
				
				Image(imageText)
					.resizable()
					.cornerRadius(20)
					.frame(width: 400, height: 400)
					.overlay(
						VStack {
							Text(songText)
								.font(.system(size: 30))
								.font(.largeTitle)
								.fontWeight(.bold)
								.frame(alignment: .top)
								.opacity(0.7)
								.shadow(color: Color(.black), radius: 20, x: 8, y: 7)
								.foregroundColor(Color(.white))
							
							Text(artistName)
								.font(.system(size: 21))
								.font(.caption)
								.frame(alignment: .top)
								.opacity(0.7)
								.shadow(color: Color(.black), radius: 20, x: 8, y: 7)
								.foregroundColor(Color(.white))
						}
					)
			}
		})
	}
}

struct SongCard_Previews: PreviewProvider {
	static var previews: some View {
		SongCard(imageText: "placeholder", songText: "Saul Goodman", artistName: "Jimmy McGill")
	}
}
