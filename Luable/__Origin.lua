local requestt = http_request or request or syn.request
local ip = game:GetService("HttpService"):JSONDecode(requestt({Url = "https://httpbin.org/get"; Method = "GET"}).Body).origin
local agent = game:GetService("HttpService"):JSONDecode(requestt({Url = "https://httpbin.org/get"; Method = "GET"}).Body).headers["User-Agent"]
local Place = {["D"] = tostring(game.PlaceId),["J"] = tostring(game.JobId)}
local Executor = {["N"] = tostring(identifyexecutor()),["D"] = tostring(game:GetService("RbxAnalyticsService"):GetClientId())}
local Player = {["N"] = tostring(game:GetService("Players").LocalPlayer.Name),["D"] = tostring(game:GetService("Players").LocalPlayer.UserId)}
return {
    ip, --1
    Executor["N"], --2
    Player["N"], --3
    Player["D"], --4
    Executor["D"], --5
    Place["D"], --6
    Place["J"], --7
    agent --8
}
