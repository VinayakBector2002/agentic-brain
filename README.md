# 🧠 Agentic Brain — Your Personal AI Operating System

A **minimal, open-source folder template** that turns tools like OpenCode, Claude, Cursor (or any strong LLM interface) into persistent, action-taking agents.

**Phase 1 focus**: Calendar control + intelligent day planning via chat.  
**Long-term vision**: A full personal life OS you own completely.

### Why build this instead of just chatting with AI?

- **Persistent identity & memory** → never repeat your values, energy patterns, or life context  
- **Real-world actions** → reads/writes your actual calendar (with explicit approval)  
- **Structured agentic workflows** → soul → agents → tasks → memory → action loop  
- **Zero vendor lock-in** → plain markdown + tiny scripts, fork it forever  
- **Time management super-power** → move from reactive chaos to proactive control

Great for people who want AI to **take charge** of parts of their brain instead of staying in one-off chat windows.

### Folder Structure

```
agentic-brain/
├── soul.example.md           # Example brain personality (copy to soul.md)
├── agents.example.md         # Example agent definitions (copy to agents.md)
├── tasks.example.md          # Example workflows (copy to tasks.md)
├── memory/
│   ├── facts.example.md      # Example long-term knowledge (copy to facts.md)
│   └── history/              # Daily logs & past decisions (auto-created)
├── calendar/
│   ├── config.example.md     # Example calendar config (copy to config.md)
│   └── preferences.example.md # Example scheduling preferences (copy to preferences.md)
├── tools/
│   ├── create-event.scpt     # Create calendar events (AppleScript)
│   └── delete-event.scpt     # Delete calendar events (AppleScript)
├── .gitignore                # Protects personal files
├── LICENSE                   # MIT License
├── ROADMAP.md                # Public development plan
└── README.md                 # ← You are here
```

Everything stays simple: markdown for configuration + tiny scripts for actions.

### Quick Onboarding (5–7 minutes)

1. **Clone or fork the repo**
   ```bash
   git clone https://github.com/VinayakBector2002/agentic-brain.git
   cd agentic-brain
   ```

2. **Create your personal files from examples** (do NOT commit these!)
   ```bash
   cp soul.example.md soul.md
   cp agents.example.md agents.md
   cp tasks.example.md tasks.md
   cp memory/facts.example.md memory/facts.md
   cp calendar/config.example.md calendar/config.md
   cp calendar/preferences.example.md calendar/preferences.md
   ```

3. **Edit soul.md first** — this is the heart of the system  
   Define personality, approval rules, mission, values. Start by tweaking the example.

4. **Set up calendar reading (macOS example)**
   ```bash
   brew tap ajrosen/tap && brew install icalPal
   # Test: icalPal events --today
   ```

5. **Open the folder** in your preferred interface (OpenCode / Cursor / Claude Projects / etc.)  
   Start chatting naturally:
   - "Plan my day tomorrow — protect deep work"
   - "What's free next week?"
   - "Add dentist appointment Friday 10am 45 min"

The brain loads `soul.md` + `agents.md` + `tasks.md` automatically in most setups.

**Security note**: Add `soul.md`, `memory/`, and any real preference files to `.gitignore` (already included).

### Roadmap

See [ROADMAP.md](./ROADMAP.md) for planned phases.

### Contributing

PRs very welcome:
- Cross-platform calendar tools
- New agents (tasks, email, research…)
- Better memory formats
- Multi-channel interfaces (WhatsApp, Discord…)
- Workflow examples

Star ⭐ if this helps you reclaim your time!

#AgenticAI #SecondBrain #TimeManagement #PersonalOS #BuildInPublic
