local function rawArgs(...)
	return table.pack(...)
end

local function watchRemote(remote)
	if remote:IsA("RemoteEvent") then
		remote.OnClientEvent:Connect(function(...)
			local args = rawArgs(...)

			local formatted = {}

			for i = 1, args.n do
				formatted[i] = tostring(args[i])
			end

			print(
				"[WATCHDOG] [" .. remote:GetFullName() .. "]:",
				table.concat(formatted, " | ")
			)
		end)
	end
end

for _, obj in ipairs(game:GetDescendants()) do
	if obj:IsA("RemoteEvent") then
		watchRemote(obj)
	end
end

game.DescendantAdded:Connect(function(obj)
	if obj:IsA("RemoteEvent") then
		watchRemote(obj)
	end
end)

print("[WATCHDOG] RemoteViewer Has Been Started!")
