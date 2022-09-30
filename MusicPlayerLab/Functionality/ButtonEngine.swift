//
//  ButtonEngine.swift
//  MusicPlayerLab
//
//  Created by Lukas Nguyen on 2022-09-21.
//

import SwiftUI

struct ButtonEngine: View {
	var size: CGFloat = 35
	var symbol: String
	var action: () -> Void
	
    var body: some View {
		Button(action: {
			action()
		}, label: {
			Image(systemName: symbol)
				.fontWeight(.medium)
				.font(.system(size: size))
				.foregroundColor(Color(.systemGray))
		})
    }
}

struct ButtonEngine_Previews: PreviewProvider {
    static var previews: some View {
		ButtonEngine(symbol: "circle.circle.fill", action: {})
    }
}
