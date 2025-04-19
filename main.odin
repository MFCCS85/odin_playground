package main

import "core:fmt"
import "core:os"
import rl "vendor:raylib"

main :: proc() {
    // Setup
    player := Player{rl.Vector2{400,300}}

    rl.InitWindow(800, 600, "ODIN RAYLIB ")
    defer rl.CloseWindow()

    rl.SetTargetFPS(60)

    // Main Game Loop
    for !rl.WindowShouldClose(){
        // Update
        if (rl.IsKeyDown(rl.KeyboardKey.RIGHT)) do player.position.x += 2.0
        if (rl.IsKeyDown(rl.KeyboardKey.LEFT)) do player.position.x -= 2.0
        if (rl.IsKeyDown(rl.KeyboardKey.UP)) do player.position.y -= 2.0
        if (rl.IsKeyDown(rl.KeyboardKey.DOWN)) do player.position.y += 2.0

        // Draw
        rl.BeginDrawing()
        defer rl.EndDrawing()
        rl.ClearBackground(rl.RAYWHITE)

        drawPlayer(player)
    }
}

drawPlayer :: proc(player : Player){
    rl.DrawCircleV(player.position, 30, rl.BLACK)
}

Player :: struct{
    position: rl.Vector2
}