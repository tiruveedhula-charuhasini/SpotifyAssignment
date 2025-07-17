//
//  MusicPlayer.swift
//  charzSpotify
//
//  Created by Pavan Dharma on 25/06/25.
//

import AVFoundation
import Combine

class MusicPlayer: ObservableObject {
    @Published var isPlaying: Bool = false

    private var player: AVAudioPlayer?

    func playSound(named fileName: String, withExtension fileExtension: String = "mp3") {
        guard let url = Bundle.main.url(forResource: fileName, withExtension: fileExtension) else {
            print("Audio file not found")
            return
        }

        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.prepareToPlay()
            player?.play()
            isPlaying = true
        } catch {
            print("Error playing sound: \(error.localizedDescription)")
        }
    }

    func pause() {
        player?.pause()
        isPlaying = false
    }

    func stop() {
        player?.stop()
        isPlaying = false
    }
}
