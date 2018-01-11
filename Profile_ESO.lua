function OnEvent(event, arg, family)
	OutputLogMessage("event = %s, arg = %s, family = %s\n", event, arg, family)
	if event == "G_PRESSED" and family == "lhc" and GetMKeyState("lhc") == 1 then
		if arg == 1 then
			OutputLCDMessage("Esc", 1500)
		elseif arg == 2 then
			OutputLCDMessage("I", 1500)
		elseif arg == 3 then
			OutputLCDMessage("J", 1500)
		elseif arg == 4 then
			OutputLCDMessage("W", 1500)
		elseif arg == 5 then
			OutputLCDMessage("E", 1500)
		elseif arg == 6 then
			OutputLCDMessage("F", 1500)
		elseif arg == 7 then
			OutputLCDMessage("R", 1500)
		elseif arg == 8 then
			OutputLCDMessage("Tilde", 1500)
		elseif arg == 9 then
			OutputLCDMessage("M", 1500)
		elseif arg == 10 then
			OutputLCDMessage("A", 1500)
		elseif arg == 11 then
			OutputLCDMessage("S", 1500)
		elseif arg == 12 then
			OutputLCDMessage("D", 1500)
		elseif arg == 13 then
			OutputLCDMessage(";", 1500)
		elseif arg == 14 then
			OutputLCDMessage("H", 1500)
		elseif arg == 15 then
			OutputLCDMessage("Shift", 1500)
		elseif arg == 16 then
			OutputLCDMessage("Z", 1500)
		elseif arg == 17 then
			OutputLCDMessage("X", 1500)
		elseif arg == 18 then
			OutputLCDMessage(".", 1500)
		elseif arg == 19 then
			OutputLCDMessage("B", 1500)
		elseif arg == 20 then
			OutputLCDMessage("Ctrl", 1500)
		elseif arg == 21 then
			OutputLCDMessage("Y", 1500)
		elseif arg == 22 then
			OutputLCDMessage("T", 1500)
		elseif arg == 23 then
			OutputLCDMessage("Scripted Space + Scripted Alt", 1500)
			PressAndReleaseKey(0x39) -- 0x39 spacebar
			PressKey(0x38)-- lalt 0x38
		elseif arg == 25 then
			OutputLCDMessage("F3", 1500)
		elseif arg == 26 then
			OutputLCDMessage("X", 1500)
		elseif arg == 27 then
			OutputLCDMessage("Q", 1500)
		elseif arg == 28 then
			OutputLCDMessage("F6", 1500)
		elseif arg == 29 then
			OutputLCDMessage("Tab + Momentary M2", 1500)
			SetMKeyState(2, "lhc")
		end
	end
	if event == "G_PRESSED" and family == "lhc" and GetMKeyState("lhc") == 2 then
		if arg == 1 then
			OutputLCDMessage("C", 1500)
		elseif arg == 2 then
			OutputLCDMessage("K", 1500)
		elseif arg == 3 then
			OutputLCDMessage("=", 1500)
		elseif arg == 4 then
			OutputLCDMessage("W", 1500)
		elseif arg == 5 then
			OutputLCDMessage("U", 1500)
		elseif arg == 6 then
			OutputLCDMessage("O", 1500)
		elseif arg == 7 then
			OutputLCDMessage("P", 1500)
		elseif arg == 8 then
			OutputLCDMessage("G", 1500)
		elseif arg == 9 then
			OutputLCDMessage("L", 1500)
		elseif arg == 10 then
			OutputLCDMessage("A", 1500)
		elseif arg == 11 then
			OutputLCDMessage("S", 1500)
		elseif arg == 12 then
			OutputLCDMessage("D", 1500)
		elseif arg == 13 then
			OutputLCDMessage("single quote", 1500)
		elseif arg == 14 then
			OutputLCDMessage("N", 1500)
		elseif arg == 15 then
			OutputLCDMessage("F1", 1500)
		elseif arg == 16 then
			OutputLCDMessage("V", 1500)
		elseif arg == 17 then
			OutputLCDMessage("F2", 1500)
		elseif arg == 18 then
			OutputLCDMessage("F5", 1500)
		elseif arg == 19 then
			OutputLCDMessage("F8", 1500)
		elseif arg == 20 then
			OutputLCDMessage("Shift + Tab", 1500)
		elseif arg == 21 then
			OutputLCDMessage("Num 6", 1500)
		elseif arg == 22 then
			OutputLCDMessage("Num 4", 1500)
		elseif arg == 23 then
			OutputLCDMessage("", 1500)
		elseif arg == 25 then
			OutputLCDMessage("", 1500)
		elseif arg == 26 then
			OutputLCDMessage("", 1500)
		elseif arg == 27 then
			OutputLCDMessage("", 1500)
		elseif arg == 28 then
			OutputLCDMessage("", 1500)
		elseif arg == 29 then
			OutputLCDMessage("", 1500)
		end
	end

	if event == "G_PRESSED" and family == "lhc" and GetMKeyState("lhc") == 3 then
		if arg == 1 then
			OutputLCDMessage("Clearing LCD")
			ClearLCD()
		elseif arg == 2 then
			OutputLCDMessage("Starting/Pausing Input Analysis")
		elseif arg == 3 then
			OutputLCDMessage("Stopping Input Analysis")
		end
	end

	if event == "G_RELEASED" and family == "lhc" then
		if arg == 23 and GetMKeyState("lhc") == 1 then
			ReleaseKey(0x38)
		end
		if GetMKeyState("lhc") == 2 and arg == 29 then
			SetMKeyState(1, "lhc")
		end
	end

	if event == "G_PRESSED" and family == "kb" then
		if GetMKeyState("kb") == 2 then
			if arg ==1 then
				OutputLCDMessage("Starting/Pausing Input Analysis")
			elseif arg == 2 then
				OutputLCDMessage("Stopping Input Analysis")
			end
		end
	end

end