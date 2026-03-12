(*
Create Event - AppleScript Tool
Usage: osascript tools/create-event.scpt "Event Title" "Month DD, YYYY" duration_minutes "calendar_name" [allday]

Example: osascript tools/create-event.scpt "Team Standup" "January 15, 2024" 30 "Home"
         osascript tools/create-event.scpt "Meeting" "March 11, 2026 at 2:00 PM" 30 "Home"
         osascript tools/create-event.scpt "Final Project" "April 6, 2026" 0 "BET 210" true

Note: Use AM/PM for times (e.g., 2:00 PM not 14:00)
      For all-day events, set duration to 0 and add "true" as 5th parameter
*)

on run argv
    set eventTitle to item 1 of argv
    set eventDateString to item 2 of argv
    set eventDuration to item 3 of argv as integer
    set calendarName to item 4 of argv
    
    set isAllDay to false
    if (count of argv) >= 5 then
        set isAllDay to (item 5 of argv) = "true"
    end if
    
    set startDate to date eventDateString
    
    tell application "Calendar"
        activate
        set calList to calendars whose name = calendarName
        if (count of calList) > 0 then
            set myCal to item 1 of calList
            
            if isAllDay then
                set endDate to startDate + (1 * days)
                tell myCal
                    make new event with properties {summary:eventTitle, start date:startDate, end date:endDate, allday event:true}
                end tell
                
                return "All-day event created: " & eventTitle & " on " & eventDateString
            else
                set endDate to startDate + (eventDuration * 60)
                tell myCal
                    make new event with properties {summary:eventTitle, start date:startDate, end date:endDate}
                end tell
                
                return "Event created: " & eventTitle
            end if
        else
            return "Calendar not found: " & calendarName & ". Available calendars: " & (name of every calendar as string)
        end if
    end tell
end run
