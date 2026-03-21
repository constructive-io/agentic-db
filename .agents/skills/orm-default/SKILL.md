---
name: orm-default
description: ORM client for the default API — provides typed CRUD operations for 118 tables and 0 custom operations
---

# orm-default

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM client for the default API — provides typed CRUD operations for 118 tables and 0 custom operations

## Usage

```typescript
// Import the ORM client
import { db } from './orm';

// Available models: activityLogChunk, activityLog, agentChunk, agent, agentPrompt, prompt, agentRule, rule, ...
db.<model>.findMany({ select: { id: true } }).execute()
db.<model>.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.<model>.create({ data: { ... }, select: { id: true } }).execute()
db.<model>.update({ where: { id: '<UUID>' }, data: { ... }, select: { id: true } }).execute()
db.<model>.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### Query records

```typescript
const items = await db.activityLogChunk.findMany({
  select: { id: true }
}).execute();
```

## References

See the `references/` directory for detailed per-entity API documentation:

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
