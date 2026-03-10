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
├── soul.md                  # Brain personality, values, core rules (loaded every session)
├── agents.md                # Defines agents and their responsibilities
├── tasks.md                 # Reusable workflows (PlanMyDay, AddEvent, etc.)
├── memory/                  # Persistent knowledge
│   ├── facts.md             # Long-term facts about you
│   └── history/             # Daily logs & past decisions (auto-created)
├── calendar/                # Calendar-specific setup
│   ├── config.md            # Tool/integration details (iCalPal, AppleScript, etc.)
│   ├── preferences.md       # Scheduling rules, energy blocks, buffers…
│   └── events-log.md        # Learned patterns (optional smart suggestions)
├── tools/                   # Safe action scripts
│   └── create-event.scpt    # Example: approve-then-act calendar writer
├── ROADMAP.md               # Public development plan
└── README.md                # ← You are here
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
   cp calendar/config.example.md calendar/config.md
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
