# Calendar Config — Example Template

**Tool**: [iCalPal or your preferred calendar CLI]

**Read commands** (example with iCalPal):
- `icalPal events --today` - Today's events
- `icalPal events --days 7` - Next 7 days
- `icalPal events --now` - Current events
- `icalPal calendars` - List your calendars

**Write tool**: `tools/create-event.scpt` (AppleScript — safe, approval-required)

**Delete tool**: `tools/delete-event.scpt` (AppleScript — safe, approval-required)

**Default settings** (edit preferences.md):
- Default calendar: [Personal]
- Energy peaks: [mornings]
- Minimum buffer: [15] minutes between events
- Blocked times: [Add your blocked times]
