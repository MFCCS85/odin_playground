package main

import "core:fmt"
import "core:os"
import "vendor:raylib"

main :: proc() {
    raylib.InitWindow(800, 600, "ODIN RAYLIB ")
    defer raylib.CloseWindow()

    raylib.SetTargetFPS(60)
    
    for !raylib.WindowShouldClose(){
        raylib.BeginDrawing()
        defer raylib.EndDrawing()

        raylib.ClearBackground(raylib.RAYWHITE)
        raylib.DrawText("HIIIIIIIIIii", 190,200,50, raylib.DARKGRAY)
    }
}

