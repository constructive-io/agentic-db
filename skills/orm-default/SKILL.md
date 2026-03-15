---
name: orm-default
description: ORM client for the default API — provides typed CRUD operations for 83 tables and 0 custom operations
---

# orm-default

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM client for the default API — provides typed CRUD operations for 83 tables and 0 custom operations

## Usage

```typescript
// Import the ORM client
import { db } from './orm';

// Available models: agentPrompt, agentRule, agentSkill, agentTool, calendarEventContact, companyEvent, companyImage, contactCompany, ...
db.<model>.findMany({ select: { id: true } }).execute()
db.<model>.findOne({ id: '<value>', select: { id: true } }).execute()
db.<model>.create({ data: { ... }, select: { id: true } }).execute()
db.<model>.update({ where: { id: '<value>' }, data: { ... }, select: { id: true } }).execute()
db.<model>.delete({ where: { id: '<value>' } }).execute()
```

## Examples

### Query records

```typescript
const items = await db.agentPrompt.findMany({
  select: { id: true }
}).execute();
```

## References

See the `references/` directory for detailed per-entity API documentation:

- [agent-prompt](references/agent-prompt.md)
- [agent-rule](references/agent-rule.md)
- [agent-skill](references/agent-skill.md)
- [agent-tool](references/agent-tool.md)
- [calendar-event-contact](references/calendar-event-contact.md)
- [company-event](references/company-event.md)
- [company-image](references/company-image.md)
- [contact-company](references/contact-company.md)
- [contact-event](references/contact-event.md)
- [contact-image](references/contact-image.md)
- [deal-contact](references/deal-contact.md)
- [event-image](references/event-image.md)
- [event-venue](references/event-venue.md)
- [expense-contact](references/expense-contact.md)
- [goal-habit](references/goal-habit.md)
- [goal-project](references/goal-project.md)
- [project-contact](references/project-contact.md)
- [task-contact](references/task-contact.md)
- [venue-image](references/venue-image.md)
- [file](references/file.md)
- [milestone](references/milestone.md)
- [calendar-account](references/calendar-account.md)
- [tag](references/tag.md)
- [feedback](references/feedback.md)
- [attachment](references/attachment.md)
- [email-account](references/email-account.md)
- [activity-log](references/activity-log.md)
- [context-relation](references/context-relation.md)
- [user-setting](references/user-setting.md)
- [execution-log](references/execution-log.md)
- [webhook](references/webhook.md)
- [notification](references/notification.md)
- [process](references/process.md)
- [workflow-run](references/workflow-run.md)
- [integration](references/integration.md)
- [skill-execution](references/skill-execution.md)
- [chat](references/chat.md)
- [chunk](references/chunk.md)
- [thread](references/thread.md)
- [chat-message](references/chat-message.md)
- [session-archive](references/session-archive.md)
- [reminder](references/reminder.md)
- [image](references/image.md)
- [workflow-step](references/workflow-step.md)
- [list-item](references/list-item.md)
- [company-link](references/company-link.md)
- [contact-link](references/contact-link.md)
- [event-link](references/event-link.md)
- [venue-link](references/venue-link.md)
- [agent-spawn](references/agent-spawn.md)
- [scheduled-job](references/scheduled-job.md)
- [habit](references/habit.md)
- [workflow](references/workflow.md)
- [habit-log](references/habit-log.md)
- [expense](references/expense.md)
- [billing-subscription](references/billing-subscription.md)
- [idea](references/idea.md)
- [list](references/list.md)
- [interaction](references/interaction.md)
- [repository](references/repository.md)
- [deal](references/deal.md)
- [goal](references/goal.md)
- [note](references/note.md)
- [prompt](references/prompt.md)
- [blueprint](references/blueprint.md)
- [template](references/template.md)
- [tool](references/tool.md)
- [recipe](references/recipe.md)
- [trip](references/trip.md)
- [calendar-event](references/calendar-event.md)
- [message](references/message.md)
- [memory](references/memory.md)
- [rule](references/rule.md)
- [task](references/task.md)
- [agent](references/agent.md)
- [session](references/session.md)
- [skill](references/skill.md)
- [project](references/project.md)
- [document](references/document.md)
- [company](references/company.md)
- [event](references/event.md)
- [contact](references/contact.md)
- [venue](references/venue.md)
