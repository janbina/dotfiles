-- http://projects.haskell.org/xmobar/

Config { font = "xft:Ubuntu:weight=bold:pixelsize=11:antialias=true:hinting=true"
       , additionalFonts = [ "xft:Mononoki Nerd Font:pixelsize=11:antialias=true:hinting=true"
                           , "xft:Mononoki Nerd Font:pixelsize=16:antialias=true:hinting=true"
                           , "xft:FontAwesome:pixelsize=13"
                           ]
       , bgColor = "#282c34"
       , fgColor = "#ff6c6b"
       , position = Static { xpos = 0 , ypos = 0, width = 1920, height = 24 }
       , lowerOnStart = True
       , hideOnStart = False
       , allDesktops = True
       , persistent = True
       , iconRoot = "/home/johny/.config/xmonad/xpm/"
       , commands = [
                      Run Date "%a %d %b [%I:%M]" "date" 50
                 -- , Run DynNetwork ["-t", "<fn=1>\xf0ab </fn> <rx>kb  <fn=1>\xf0aa </fn> <tx>kb"] 20
                    , Run Cpu ["-t", "<fn=1>\xf108 </fn> cpu <total>"] 20
                    , Run Memory ["-t", "<fn=1>\xf233 </fn> mem <usedratio>"] 20
                    , Run Battery ["--template", "<acstatus><left>",
                                   "--Low", "10",
				   "--High", "30",
                                   "-p", "3",
                                   "--low", "red",
                                   "--normal", "orange",
                                   "--",
                                   -- charging
                                   "-O", "<fn=1>\xf111 </fn>",
                                   -- charged
                                   "-i", "<fn=1>\xf111 </fn>",
                                   -- discharging
                                   "-o", "<fn=1>\xf10c </fn>",
                                   "-f", "AC/online"
                                  ] 600
                    , Run Weather "LKPR" ["-t", "PRG <tempC>° <windMs>ms <skyCondition>"] 36000
                    , Run Weather "LOWI" ["-t", "INN <tempC>°"] 36000
                    , Run Weather "EFHK" ["-t", "HEL <tempC>°"] 36000
                    , Run Kbd []
                    , Run Volume "default" "Master" ["-t", "<status> <volume>",
                                                     "--", "-C", "#ababab", "-c", "#ababab",
                                                     "-O", "<fn=1>\xf0a2 </fn>",
                                                     "-o", "<fn=1>\xf1f7 </fn>"] 10
                    , Run UnsafeStdinReader
                    ]
       , sepChar = "%"
       , alignSep = "}{"
       , template = " <icon=haskell_20.xpm/>\
                      \<fc=#666666>  | </fc>\
                      \<fc=#ababab> %UnsafeStdinReader% </fc>\
                      \}{\
                      \<fc=#ababab> %LKPR% </fc>\
                      \<fc=#666666> | </fc>\
                      \<fc=#ababab> %LOWI% </fc>\
                      \<fc=#666666> | </fc>\
                      \<fc=#ababab> %EFHK% </fc>\
                      \<fc=#666666> | </fc>\
                      \<fc=#ababab> %default:Master% </fc>\
                      \<fc=#666666> | </fc>\
                      \<fc=#ababab> %battery% </fc>\
                      \<fc=#666666> | </fc>\
                      \<fc=#ababab> %cpu% </fc>\
                      \<fc=#666666> | </fc>\
                      \<fc=#ababab> %memory% </fc>\
                      -- \<fc=#666666> | </fc>\
                      -- \<fc=#ababab> %dynnetwork% </fc>\
                      \<fc=#666666> | </fc>\
                      \<fc=#ababab> %kbd% </fc>\
                      \<fc=#666666> | </fc>\
                      \<fc=#cdcdcd> %date%  </fc>"
       }
