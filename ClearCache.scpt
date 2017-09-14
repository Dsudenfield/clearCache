set theWebsite to text returned of (display dialog "Enter Keyword" with title "Enter the keyword of the site you want to clear" default answer "" buttons {"Cancel", "Clear Data"} default button 2)
tell application "Safari" to activate
-- delay 1
tell application "System Events" to tell process "Safari"
    keystroke "," using command down
    -- delay 1
    tell window 1
        click button "Privacy" of tool bar 1
        -- delay 1
            click button "Manage Website Data…" of group 1 of group 1
            -- delay 1
            keystroke theWebsite
            delay 1
            keystroke tab
            delay 3
            keystroke "a" using command down
            click button "Remove All" of sheet 1
            keystroke return
            click button "Done" of sheet 1
    end tell
    keystroke "w" using command down
end tell

