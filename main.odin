package main

import "core:fmt"
import "core:os"
import rl "vendor:raylib"

main :: proc() {
    // Setup
    player := Player{rl.Vector2{400,300}, rl.Vector2{0, 10}}

    rl.InitWindow(800, 600, "ODIN RAYLIB ")
    defer rl.CloseWindow()

    rl.SetTargetFPS(60)

    // Main Game Loop
    for !rl.WindowShouldClose(){
        // Update
        dt := rl.GetFrameTime()
        player.position.y += player.velocity.y * dt
        player.velocity.y += 600 * dt

        if player.position.y >= 570 {
            player.position.y = 570
            player.velocity.y = 600 * dt
        }

        if player.position.y <= 30 {
            player.position.y = 30
        }

        if rl.IsKeyPressed(rl.KeyboardKey.SPACE){
            player.velocity.y = -600
        }

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
    position: rl.Vector2,
    velocity: rl.Vector2
}