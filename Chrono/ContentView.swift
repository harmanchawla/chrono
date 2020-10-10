//
//  ContentView.swift
//  Chrono
//
//  Created by Harman Chawla on 10/10/20.
//  Copyright © 2020 werkzeuge. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var stopWatch = StopWatch()
    
    var body: some View {
        Text(self.stopWatch.stopWatchTime)
        .font(.system(size: 60))
        .fontWeight(.semibold)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .onTapGesture(count: 2) {
            self.stopWatch.reset()
        }
        .onTapGesture {
            if (self.stopWatch.paused == true) {
                self.stopWatch.start()
                self.stopWatch.paused = false
            } else {
                self.stopWatch.pause()
                self.stopWatch.paused = true
            }
        }
    }
}
    

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
