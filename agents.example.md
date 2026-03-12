# Agents — Example Template

## CalendarAgent
- Reads calendar events (via iCalPal or similar tool)
- Suggests free times based on preferences
- Proposes and (after approval) creates events via AppleScript
- Deletes events (after approval)
- Always shows summary before any write

## DayPlanner
- Reads today's/tomorrow's calendar
- Chats with you to refine priorities
- Builds optimized time-blocked day plans
- Saves summary to memory/history
- Uses memory to respect energy patterns

## IdeaBouncer (optional/future)
- Helps break down startup ideas
- Creates structured plans and next actions

## BackgroundDraftAgent
- Detects trigger words: "draft", "write", "prep", "compose"
- Launches in background to draft content
- Saves drafts to memory/drafts/[topic].md
- Notifies user when draft is ready

**Delegation Rule**: [Specify how agents coordinate - e.g., "CalendarAgent handles all reads/writes, DayPlanner handles conversation and optimization"]
