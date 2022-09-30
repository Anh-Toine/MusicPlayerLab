//
//  MusicEngine.swift
//  MusicPlayerLab
//
//  Created by Lukas Nguyen on 2022-09-21.
//

import SwiftUI
import AVKit


class MusicEngine: ObservableObject {
	
	@Published var isPlaying: Bool = false
	@Published var isPaused: Bool = true
	@Published var isStopped: Bool = false
	
	var audioPlayer: AVAudioPlayer!
	
	func initAudio(musicFile: String, type: String) {
		
		if let track = Bundle.main.path(forResource: musicFile, ofType: type) {
			print("Track: \(track)")
			let fileURL = URL(fileURLWithPath: track)
			print("URL:\(fileURL)")
			do {
				audioPlayer = try
				AVAudioPlayer.init(contentsOf: fileURL)
			}
			catch {
				print("Error: File not found!")
			}
		}

	}
	
	func loadAndPlay(fileName: String, fileType: String) {
		initAudio(musicFile: fileName, type: fileType)
		playMusic()
	}
	
	func playMusic() {
		audioPlayer?.play()
	}
	
	func pauseMusic() {
		audioPlayer?.pause()
	}
}
