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

# CRUD for any table (e.g. activity-log)
agentic-db activity-log list
agentic-db activity-log get --id <value>
agentic-db activity-log create --<field> <value>

# Non-interactive mode (skip all prompts, use flags only)
agentic-db --no-tty activity-log list
```

## Examples

### Set up and query

```bash
agentic-db context create local --endpoint http://localhost:5000/graphql
agentic-db context use local
agentic-db auth set-token <token>
agentic-db activity-log list
```

### Non-interactive mode (for scripts and CI)

```bash
agentic-db --no-tty activity-log create --<field> <value>
```

## References

See the `references/` directory for detailed per-entity API documentation:

- [context](references/context.md)
- [auth](references/auth.md)
- [config](references/config.md)
- [activity-log](references/activity-log.md)
- [agent-collaborator](references/agent-collaborator.md)
- [agent](references/agent.md)
- [agent-log](references/agent-log.md)
- [agent-prompt](references/agent-prompt.md)
- [prompt](references/prompt.md)
- [autonomy-record](references/autonomy-record.md)
- [autonomy-record-link](references/autonomy-record-link.md)
- [calendar-attendee](references/calendar-attendee.md)
- [calendar](references/calendar.md)
- [calendar-event](references/calendar-event.md)
- [calendar-event-contact](references/calendar-event-contact.md)
- [contact](references/contact.md)
- [calendar-event-note](references/calendar-event-note.md)
- [note](references/note.md)
- [calendar-event-task](references/calendar-event-task.md)
- [task](references/task.md)
- [codebase-dependency](references/codebase-dependency.md)
- [codebasis](references/codebasis.md)
- [code-chunk](references/code-chunk.md)
- [company](references/company.md)
- [deal](references/deal.md)
- [company-event](references/company-event.md)
- [event](references/event.md)
- [company-image](references/company-image.md)
- [image](references/image.md)
- [company-link](references/company-link.md)
- [memory](references/memory.md)
- [company-memory](references/company-memory.md)
- [company-note](references/company-note.md)
- [contact-company](references/contact-company.md)
- [email](references/email.md)
- [email-thread](references/email-thread.md)
- [contact-event](references/contact-event.md)
- [expense](references/expense.md)
- [contact-image](references/contact-image.md)
- [contact-link](references/contact-link.md)
- [contact-memory](references/contact-memory.md)
- [contact-note](references/contact-note.md)
- [project](references/project.md)
- [contact-relationship](references/contact-relationship.md)
- [conversation](references/conversation.md)
- [deal-company](references/deal-company.md)
- [deal-contact](references/deal-contact.md)
- [deal-note](references/deal-note.md)
- [email-attachment](references/email-attachment.md)
- [email-note](references/email-note.md)
- [email-recipient](references/email-recipient.md)
- [event-image](references/event-image.md)
- [event-link](references/event-link.md)
- [event-note](references/event-note.md)
- [event-venue](references/event-venue.md)
- [venue](references/venue.md)
- [expense-contact](references/expense-contact.md)
- [goal](references/goal.md)
- [goal-habit](references/goal-habit.md)
- [habit](references/habit.md)
- [goal-project](references/goal-project.md)
- [hiking-trail](references/hiking-trail.md)
- [interaction](references/interaction.md)
- [message](references/message.md)
- [place](references/place.md)
- [project-contact](references/project-contact.md)
- [provider-sync-state](references/provider-sync-state.md)
- [raw-contact](references/raw-contact.md)
- [raw-contact-email](references/raw-contact-email.md)
- [raw-contact-phone](references/raw-contact-phone.md)
- [raw-contact-url](references/raw-contact-url.md)
- [rule](references/rule.md)
- [runtime-artifact](references/runtime-artifact.md)
- [runtime-config](references/runtime-config.md)
- [runtime-event](references/runtime-event.md)
- [runtime-log](references/runtime-log.md)
- [runtime-metric](references/runtime-metric.md)
- [runtime-schedule](references/runtime-schedule.md)
- [runtime-state](references/runtime-state.md)
- [runtime-state-dependency](references/runtime-state-dependency.md)
- [skill](references/skill.md)
- [skill-tool](references/skill-tool.md)
- [tool-definition](references/tool-definition.md)
- [tag](references/tag.md)
- [task-contact](references/task-contact.md)
- [task-note](references/task-note.md)
- [task-project](references/task-project.md)
- [thread-participant](references/thread-participant.md)
- [tool-execution](references/tool-execution.md)
- [touchpoint](references/touchpoint.md)
- [trip](references/trip.md)
- [venue-image](references/venue-image.md)
- [venue-link](references/venue-link.md)
