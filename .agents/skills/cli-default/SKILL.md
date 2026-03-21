---
name: cli-default
description: CLI tool (agentic-db) for the default API — provides CRUD commands for 118 tables and 0 custom operations
---

# cli-default

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CLI tool (agentic-db) for the default API — provides CRUD commands for 118 tables and 0 custom operations

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

# CRUD for any table (e.g. activity-log-chunk)
agentic-db activity-log-chunk list
agentic-db activity-log-chunk get --id <value>
agentic-db activity-log-chunk create --<field> <value>

# Non-interactive mode (skip all prompts, use flags only)
agentic-db --no-tty activity-log-chunk list
```

## Examples

### Set up and query

```bash
agentic-db context create local --endpoint http://localhost:5000/graphql
agentic-db context use local
agentic-db auth set-token <token>
agentic-db activity-log-chunk list
```

### Non-interactive mode (for scripts and CI)

```bash
agentic-db --no-tty activity-log-chunk create --<field> <value>
```

## References

See the `references/` directory for detailed per-entity API documentation:

- [context](references/context.md)
- [auth](references/auth.md)
- [config](references/config.md)
- [activity-log-chunk](references/activity-log-chunk.md)
- [activity-log](references/activity-log.md)
- [agent-chunk](references/agent-chunk.md)
- [agent](references/agent.md)
- [agent-prompt](references/agent-prompt.md)
- [prompt](references/prompt.md)
- [agent-rule](references/agent-rule.md)
- [rule](references/rule.md)
- [agent-skill](references/agent-skill.md)
- [skill](references/skill.md)
- [agent-spawn](references/agent-spawn.md)
- [agent-tool](references/agent-tool.md)
- [tool](references/tool.md)
- [billing-subscription](references/billing-subscription.md)
- [blueprint-chunk](references/blueprint-chunk.md)
- [blueprint](references/blueprint.md)
- [calendar-account](references/calendar-account.md)
- [calendar-event-chunk](references/calendar-event-chunk.md)
- [calendar-event](references/calendar-event.md)
- [calendar-event-contact](references/calendar-event-contact.md)
- [contact](references/contact.md)
- [chat-chunk](references/chat-chunk.md)
- [chat](references/chat.md)
- [chat-message-chunk](references/chat-message-chunk.md)
- [chat-message](references/chat-message.md)
- [chunk](references/chunk.md)
- [company-chunk](references/company-chunk.md)
- [company](references/company.md)
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
- [expense](references/expense.md)
- [contact-image](references/contact-image.md)
- [contact-link](references/contact-link.md)
- [contact-memory](references/contact-memory.md)
- [contact-note](references/contact-note.md)
- [project](references/project.md)
- [task](references/task.md)
- [deal-chunk](references/deal-chunk.md)
- [deal-contact](references/deal-contact.md)
- [deal-note](references/deal-note.md)
- [document-chunk](references/document-chunk.md)
- [document](references/document.md)
- [email-account](references/email-account.md)
- [event-chunk](references/event-chunk.md)
- [event-image](references/event-image.md)
- [event-link](references/event-link.md)
- [event-note](references/event-note.md)
- [event-venue](references/event-venue.md)
- [venue](references/venue.md)
- [execution-log](references/execution-log.md)
- [expense-contact](references/expense-contact.md)
- [file](references/file.md)
- [goal-chunk](references/goal-chunk.md)
- [goal](references/goal.md)
- [goal-habit](references/goal-habit.md)
- [habit](references/habit.md)
- [goal-project](references/goal-project.md)
- [habit-log](references/habit-log.md)
- [idea-chunk](references/idea-chunk.md)
- [idea](references/idea.md)
- [integration](references/integration.md)
- [interaction-chunk](references/interaction-chunk.md)
- [interaction](references/interaction.md)
- [list-chunk](references/list-chunk.md)
- [list](references/list.md)
- [memory-chunk](references/memory-chunk.md)
- [message-chunk](references/message-chunk.md)
- [message](references/message.md)
- [milestone](references/milestone.md)
- [note-chunk](references/note-chunk.md)
- [process](references/process.md)
- [project-chunk](references/project-chunk.md)
- [project-contact](references/project-contact.md)
- [prompt-chunk](references/prompt-chunk.md)
- [recipe-chunk](references/recipe-chunk.md)
- [recipe](references/recipe.md)
- [reminder-chunk](references/reminder-chunk.md)
- [reminder](references/reminder.md)
- [repository-chunk](references/repository-chunk.md)
- [repository](references/repository.md)
- [rule-chunk](references/rule-chunk.md)
- [scheduled-job](references/scheduled-job.md)
- [session-archive-chunk](references/session-archive-chunk.md)
- [session-archive](references/session-archive.md)
- [session-chunk](references/session-chunk.md)
- [session](references/session.md)
- [skill-chunk](references/skill-chunk.md)
- [skill-execution](references/skill-execution.md)
- [tag](references/tag.md)
- [task-chunk](references/task-chunk.md)
- [task-contact](references/task-contact.md)
- [task-note](references/task-note.md)
- [template-chunk](references/template-chunk.md)
- [template](references/template.md)
- [thread-chunk](references/thread-chunk.md)
- [thread](references/thread.md)
- [tool-chunk](references/tool-chunk.md)
- [trip-chunk](references/trip-chunk.md)
- [trip](references/trip.md)
- [user-setting](references/user-setting.md)
- [venue-chunk](references/venue-chunk.md)
- [venue-image](references/venue-image.md)
- [venue-link](references/venue-link.md)
- [webhook](references/webhook.md)
- [workflow](references/workflow.md)
- [workflow-run](references/workflow-run.md)
- [workflow-step](references/workflow-step.md)
