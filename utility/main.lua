local a={service={},version="0.0.3"}setmetatable(a.service,{__index=function(b,c)return game:GetService(c)end,__newindex=function(d,e)d[e]=nil;return end})function a.loadstring(f)pcall(function()return loadstring(game:HttpGet(f))end)end;function a.fetch_finity(g)local g=g or"NORMAL"if string.upper(g)=="NORMAL"or string.upper(g)=="N"then a.loadstring("https://raw.githubusercontent.com/RobloxArchiver/Niggardly_Client_Data/main/gui/Finity_Fork.lua")()elseif string.upper(g)=="SNAKE"or string.upper(g)=="S"then a.loadstring("https://raw.githubusercontent.com/RobloxArchiver/Niggardly_Client_Data/main/gui/snake_case.lua")()end end;function a.fetch_client(game)return a.loadstring("https://raw.githubusercontent.com/RobloxArchiver/Niggardly_Client_Data/main/data/"..game.."/client")()end;function a.create_heartbeat(h,i)local self={callback=h or function()end,delay=i or 0,connection=nil,disconnect=nil}self.run=function()self.connection=a.service["RunService"].Heartbeat:Connect(function()self.callback()task.wait(self.delay)end)end;self.disconnect=function()if self.connection~=nil then self.connection:Disconnect()end end;self.set_callback=function(h)self.callback=h end;self.get_callback=function()if h~=nil then return self.callback end end;self.set_delay=function(i)self.delay=i end;self.get_delay=function()return self.delay end;return self end;function a.magnitude_from_player(j,k)return(k.Character.HumanoidRootPart.Position-j.Character.HumanoidRootPart.Position).Magnitude end;function a.magnitude_from_part(l,m)return(m.Position-l.Position).Magnitude end;function a.magnitude_from_position(n,o)return(o-n).Magnitude end;function a.set_local_fov(p)a.service["Workspace"]:FindFirstChild("Camera").FieldOfView=p end;function a.is_seat_occupied(q)if not q:IsA("Seat")then return nil end;if q.Occupant then return true else return false end end;function a.get_player_position(r,s)if not s then return r.Character.HumanoidRootPart.Position else return r.Character.HumanoidRootPart.CFrame end end;function a.get_part_position(t,s)if not s then return t.Position else return t.CFrame end end;function a.register_remote_event(u)local self={path=u}self.fire=function(...)u:FireServer(...)end;return self end;function a.register_remote_function(u)local self={path=u}self.fire=function(...)return u:InvokeServer(...)end;return self end;return a
