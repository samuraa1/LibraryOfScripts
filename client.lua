repeat task.wait() until game:IsLoaded()

local ws = WebSocket.connect("ws://localhost:9000")

ws.OnMessage:Connect(function(code)
    pcall(loadstring, code)
end)

ws.OnClose:Connect(function()
    task.wait(2)
    loadstring(game:HttpGet("https://raw.githubusercontent.com/samuraa1/LibraryOfScripts/refs/heads/main/client.lua"))()
end)
