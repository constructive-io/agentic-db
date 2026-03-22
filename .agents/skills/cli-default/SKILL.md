---
name: cli-default
description: CLI tool (agentic-db) for the default API — provides CRUD commands for 90 tables and 0 custom operations
---

# cli-default

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CLI tool (agentic-db) for the default API — provides CRUD commands for 90 tables and 0 custom operations

## Usage

```bash
# Context management
agentic-db context create <name> --endpoint <url>
agentic-db context use <name>

# Authentication
agentic-db auth set-token <token>

# Config variables
agentic-db config set <key> <value>
agentic-db config get <key>

# CRUD for any table (e.g. agent-chunk)
agentic-db agent-chunk list
agentic-db agent-chunk get --id <value>
agentic-db agent-chunk create --<field> <value>

# Non-interactive mode (skip all prompts, use flags only)
agentic-db --no-tty agent-chunk list
```

## Examples

### Set up and query

```bash
agentic-db context create local --endpoint http://localhost:5000/graphql
agentic-db context use local
agentic-db auth set-token <token>
agentic-db agent-chunk list
```

### Non-interactive mode (for scripts and CI)

```bash
agentic-db --no-tty agent-chunk create --<field> <value>
```

## References

See the `references/` directory for detailed per-entity API documentation:

- [context](references/context.md)
- [auth](references/auth.md)
- [config](references/config.md)
- [agent-chunk](references/agent-chunk.md)
- [agent-collaborator](references/agent-collaborator.md)
- [agent](references/agent.md)
- [agent-log-chunk](references/agent-log-chunk.md)
- [agent-log](references/agent-log.md)
- [agent-task-chunk](references/agent-task-chunk.md)
- [agent-task](references/agent-task.md)
- [autonomy-record-chunk](references/autonomy-record-chunk.md)
- [autonomy-record](references/autonomy-record.md)
- [autonomy-record-link](references/autonomy-record-link.md)
- [codebas-chunk](references/codebas-chunk.md)
- [codebase-dependency](references/codebase-dependency.md)
- [codebasis](references/codebasis.md)
- [code-chunk](references/code-chunk.md)
- [company-chunk](references/company-chunk.md)
- [company](references/company.md)
- [contact](references/contact.md)
- [company-event](references/company-event.md)
- [event](references/event.md)
- [company-image](references/company-image.md)
- [image](references/image.md)
- [company-link](references/company-link.md)
- [memory](references/memory.md)
- [company-memory](references/company-memory.md)
- [company-note](references/company-note.md)
- [note](references/note.md)
- [contact-chunk](references/contact-chunk.md)
- [contact-company](references/contact-company.md)
- [deal](references/deal.md)
- [contact-event](references/contact-event.md)
- [contact-image](references/contact-image.md)
- [contact-link](references/contact-link.md)
- [contact-memory](references/contact-memory.md)
- [contact-note](references/contact-note.md)
- [project](references/project.md)
- [conversation-chunk](references/conversation-chunk.md)
- [conversation](references/conversation.md)
- [deal-chunk](references/deal-chunk.md)
- [deal-contact](references/deal-contact.md)
- [deal-note](references/deal-note.md)
- [event-chunk](references/event-chunk.md)
- [event-image](references/event-image.md)
- [event-link](references/event-link.md)
- [event-note](references/event-note.md)
- [event-venue](references/event-venue.md)
- [venue](references/venue.md)
- [goal-chunk](references/goal-chunk.md)
- [goal](references/goal.md)
- [goal-habit](references/goal-habit.md)
- [habit](references/habit.md)
- [goal-project](references/goal-project.md)
- [habit-chunk](references/habit-chunk.md)
- [hiking-trail-chunk](references/hiking-trail-chunk.md)
- [hiking-trail](references/hiking-trail.md)
- [trip](references/trip.md)
- [interaction-chunk](references/interaction-chunk.md)
- [interaction](references/interaction.md)
- [itinerary-item-chunk](references/itinerary-item-chunk.md)
- [itinerary-item](references/itinerary-item.md)
- [memory-chunk](references/memory-chunk.md)
- [message-chunk](references/message-chunk.md)
- [message](references/message.md)
- [note-chunk](references/note-chunk.md)
- [place-chunk](references/place-chunk.md)
- [place](references/place.md)
- [project-chunk](references/project-chunk.md)
- [project-contact](references/project-contact.md)
- [rule-chunk](references/rule-chunk.md)
- [rule](references/rule.md)
- [runtime-artifact](references/runtime-artifact.md)
- [runtime-config](references/runtime-config.md)
- [runtime-event](references/runtime-event.md)
- [runtime-log-chunk](references/runtime-log-chunk.md)
- [runtime-log](references/runtime-log.md)
- [runtime-metric](references/runtime-metric.md)
- [runtime-schedule](references/runtime-schedule.md)
- [runtime-state-chunk](references/runtime-state-chunk.md)
- [runtime-state](references/runtime-state.md)
- [runtime-state-dependency](references/runtime-state-dependency.md)
- [skill-chunk](references/skill-chunk.md)
- [skill](references/skill.md)
- [tag](references/tag.md)
- [tool-definition](references/tool-definition.md)
- [tool-execution](references/tool-execution.md)
- [trip-chunk](references/trip-chunk.md)
- [trip-hiking-trail](references/trip-hiking-trail.md)
- [trip-place](references/trip-place.md)
- [venue-chunk](references/venue-chunk.md)
- [venue-image](references/venue-image.md)
- [venue-link](references/venue-link.md)
