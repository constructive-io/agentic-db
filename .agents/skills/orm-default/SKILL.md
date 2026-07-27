---
name: orm-default
description: ORM client for the default API — provides typed CRUD operations for 95 tables and 1 custom operations
---

# orm-default

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM client for the default API — provides typed CRUD operations for 95 tables and 1 custom operations

## Usage

```typescript
// Import the ORM client
import { db } from './orm';

// Available models: activityLog, agent, agentCollaborator, agentLog, agentPrompt, prompt, autonomyRecord, autonomyRecordLink, ...
db.<model>.findMany({ select: { id: true } }).execute()
db.<model>.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.<model>.create({ data: { ... }, select: { id: true } }).execute()
db.<model>.update({ where: { id: '<UUID>' }, data: { ... }, select: { id: true } }).execute()
db.<model>.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### Query records

```typescript
const items = await db.activityLog.findMany({
  select: { id: true }
}).execute();
```

## References

See the `references/` directory for detailed per-entity API documentation:

- [activity-log](references/activity-log.md)
- [agent](references/agent.md)
- [agent-collaborator](references/agent-collaborator.md)
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
- [company](references/company.md)
- [deal](references/deal.md)
- [company-document](references/company-document.md)
- [document](references/document.md)
- [company-event](references/company-event.md)
- [event](references/event.md)
- [company-image](references/company-image.md)
- [image](references/image.md)
- [company-link](references/company-link.md)
- [memory](references/memory.md)
- [company-memory](references/company-memory.md)
- [company-note](references/company-note.md)
- [contact-address](references/contact-address.md)
- [contact-company](references/contact-company.md)
- [contact-email](references/contact-email.md)
- [email](references/email.md)
- [email-thread](references/email-thread.md)
- [contact-event](references/contact-event.md)
- [expense](references/expense.md)
- [contact-image](references/contact-image.md)
- [contact-link](references/contact-link.md)
- [contact-memory](references/contact-memory.md)
- [contact-note](references/contact-note.md)
- [contact-phone](references/contact-phone.md)
- [project](references/project.md)
- [contact-relationship](references/contact-relationship.md)
- [contacts-chunk](references/contacts-chunk.md)
- [conversation](references/conversation.md)
- [deal-company](references/deal-company.md)
- [deal-contact](references/deal-contact.md)
- [deal-note](references/deal-note.md)
- [documents-chunk](references/documents-chunk.md)
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
- [interaction](references/interaction.md)
- [message](references/message.md)
- [notes-chunk](references/notes-chunk.md)
- [place](references/place.md)
- [project-contact](references/project-contact.md)
- [project-document](references/project-document.md)
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
- [provision-bucket](references/provision-bucket.md)
