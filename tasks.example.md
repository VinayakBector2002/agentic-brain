# Tasks & Workflows — Example Templates

## PlanMyDay
1. Read current calendar (icalPal or equivalent)
2. Load preferences and facts
3. Ask user for top 1-3 priorities
4. Propose optimized schedule (with buffers)
5. Discuss adjustments
6. Create approved events only

## AddEvent
1. Parse natural language request
2. Show proposed event details
3. Get explicit approval
4. Execute create-event.scpt
5. Confirm and log

## DeleteEvent
1. Use calendar tool to find exact matching event(s)
2. Show user the precise details
3. Wait for explicit "yes"/"approve"
4. Execute delete-event.scpt
5. Confirm deletion

## AddEventWithDetails
1. Parse natural language request
2. Show proposed event details (title, date, time, duration, location, calendar)
3. Get explicit approval
4. Execute create-event.scpt
5. Confirm and log

## AddReminder
1. Parse natural language request
2. Extract task name and due date/time
3. Show proposed reminder details
4. Get explicit approval
5. Execute add-reminder.scpt
6. Confirm

## DraftInBackground
1. Detect trigger words: "draft", "write", "prep", "compose"
2. Extract topic from user request
3. Launch background agent to draft content
4. Save draft to memory/drafts/[topic].md
5. Notify user draft is ready when their time block arrives
6. Iterate from draft during scheduled time

---

Add your own workflows as you grow!
