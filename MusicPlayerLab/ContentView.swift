//
//  ContentView.swift
//  MusicPlayerLab
//
//  Created by Lukas Nguyen on 2022-09-20.
//

import SwiftUI
import AVKit

struct ContentView: View {
	
	@StateObject var musicEngine: MusicEngine = MusicEngine()

	var body: some View {
		VStack{
			
			Spacer()
			
			ScrollView(.horizontal, showsIndicators: false) {
				HStack(spacing: 20) {
					SongCard(imageText: "Dick Dale", songText: "Miserlou",artistName: "Dick Dale")
					SongCard(imageText: "Lynyrd Skynyrd", songText: "Free Bird",artistName: "Lynyrd Skynyrd")
					SongCard(imageText: "Oasis", songText: " Wonderwall",artistName: "Oasis")
					SongCard(imageText: "Men At Work", songText: "Down Under",artistName: "Men At Work")
					
				}
			}
			.padding(.top)
			
			Spacer()
			
			HStack {
				ButtonEngine(symbol: "play.circle", action: {})
				ButtonEngine(symbol: "pause.circle", action: {})
				ButtonEngine(symbol: "stop.circle", action: {})
			}
			.padding(.bottom)
			
			Spacer()
			
		}
	}
	
	struct ContentView_Previews: PreviewProvider {
		static var previews: some View {
			ContentView()
		}
	}
}
