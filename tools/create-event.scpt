(*
Create Event - AppleScript Tool
Usage: osascript tools/create-event.scpt "Event Title" "Month DD, YYYY at HH:MM" duration_minutes "calendar_name"

Example: osascript tools/create-event.scpt "Team Standup" "January 15, 2024 at 9:00 AM" 30 "Home"
         osascript tools/create-event.scpt "Meeting" "March 11, 2026 at 2:00 PM" 30 "Home"

Note: Use AM/PM for times (e.g., 2:00 PM not 14:00)
*)

on run argv
    set eventTitle to item 1 of argv
    set eventDateString to item 2 of argv
    set eventDuration to item 3 of argv as integer
    set calendarName to item 4 of argv
    
    set startDate to date eventDateString
    set endDate to startDate + (eventDuration * 60)
    
    tell application "Calendar"
        activate
        set calList to calendars whose name = calendarName
        if (count of calList) > 0 then
            set myCal to item 1 of calList
            
            tell myCal
                make new event with properties {summary:eventTitle, start date:startDate, end date:endDate}
            end tell
            
            return "Event created: " & eventTitle
        else
            return "Calendar not found: " & calendarName & ". Available calendars: " & (name of every calendar as string)
        end if
    end tell
end run
