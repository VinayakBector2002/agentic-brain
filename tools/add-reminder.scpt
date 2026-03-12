(*
Add Reminder - AppleScript Tool
Usage: osascript tools/add-reminder.scpt "Task Name" "Month DD, YYYY at HH:MM"

Example: osascript tools/add-reminder.scpt "Follow up Amazon" "March 21, 2026 at 10:00 AM"

Note: Creates reminder in default "Reminders" list
*)

on run argv
    set taskName to item 1 of argv
    set dateInput to item 2 of argv
    
    set theDate to date dateInput
    
    tell application "Reminders"
        tell list "Reminders"
            set newRem to make new reminder with properties {name:taskName, remind me date:theDate}
        end tell
    end tell
    
    return "Reminder created: " & taskName
end run
