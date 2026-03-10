(*
Delete Event - AppleScript Tool
Usage: osascript tools/delete-event.scpt "Event Title" "Month DD, YYYY at HH:MM" [calendar_name]

Example: osascript tools/delete-event.scpt "Driving lesson" "March 10, 2026 at 11:00 PM"
         osascript tools/delete-event.scpt "Meeting" "January 15, 2024 at 9:00 AM" "Home"

Note: Calendar defaults to "Personal" if not specified
*)

on run argv
    set eventTitle to item 1 of argv
    set eventDateString to item 2 of argv
    
    if (count of argv) >= 3 then
        set calendarName to item 3 of argv
    else
        set calendarName to "Personal"
    end if
    
    set startDate to date eventDateString
    
    tell application "Calendar"
        activate
        set calList to calendars whose name = calendarName
        if (count of calList) > 0 then
            set myCal to item 1 of calList
            set theEvents to (every event of myCal whose summary is eventTitle and start date is startDate)
            
            if (count of theEvents) = 0 then
                return "No matching event found: " & eventTitle & " at " & eventDateString & " in calendar " & calendarName
            end if
            
            set targetEvent to first item of theEvents
            delete targetEvent
            
            return "Deleted: " & eventTitle & " at " & eventDateString
        else
            return "Calendar not found: " & calendarName
        end if
    end tell
end run
