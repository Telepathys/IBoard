//
//  ClipMenuItem.swift
//  ClipBoardManager
//
//  Created by Lennard on 12.10.22.
//

import SwiftUI


struct ClipMenu: View {
    @EnvironmentObject private var clipBoardHandler :ClipBoardHandler
    var clip :ClipBoardData
    var maxLength :Int
    var count: Int
    
    init(clip: ClipBoardData, maxLength: Int, count: Int) {
        self.clip = clip
        self.maxLength = maxLength
        self.count = count
    }
    
    var body: some View {

        Button(action: {
            clipBoardHandler.write(entry: clip)
        }) {
            HStack {
                calcImage(clip: clip)
                    .resizable()
                    .frame(width: 15, height: 15)
                Text(calcTitel(clip: clip, maxLength: maxLength))
            }
        }.keyboardShortcut(KeyEquivalent(Character(UnicodeScalar(0x0030+count)!)))
    }
    
    
}

struct ClipMenuItem_Previews: PreviewProvider {
    static var previews: some View {
        ClipMenu(clip: ClipBoardData(), maxLength: 40, count: 1)
            .environmentObject(ClipBoardHandler(configHandler: ConfigHandler()))
    }
}

// if clip.isFile && clip.content[NSPasteboard.PasteboardType("com.apple.icns")] == nil && clip.content[NSPasteboard.PasteboardType.tiff] == nil {if clip.isFile && clip.content[NSPasteboard.PasteboardType("com.apple.icns")] == nil && clip.content[NSPasteboard.PasteboardType.tiff] == nil {if clip.isFile && clip.content[NSPasteboard.PasteboardType("com.apple.icns")] == nil && clip.content[NSPasteboard.PasteboardType.tiff] == nil {if clip.isFile && clip.content[NSPasteboard.PasteboardType("com.apple.icns")] == nil && clip.content[NSPasteboard.PasteboardType.tiff] == nil {if clip.isFile && clip.content[NSPasteboard.PasteboardType("com.apple.icns")] == nil && clip.content[NSPasteboard.PasteboardType.tiff] == nil {if clip.isFile && clip.content[NSPasteboard.PasteboardType("com.apple.icns")] == nil && clip.content[NSPasteboard.PasteboardType.tiff] == nil {
