---
name: orm-default
description: ORM client for the default API — provides typed CRUD operations for 93 tables and 0 custom operations
---

# orm-default

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM client for the default API — provides typed CRUD operations for 93 tables and 0 custom operations

## Usage

```typescript
// Import the ORM client
import { db } from './orm';

// Available models: agentCollaborator, agent, prompt, agentPrompt, task, contact, image, contactImage, ...
db.<model>.findMany({ select: { id: true } }).execute()
db.<model>.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.<model>.create({ data: { ... }, select: { id: true } }).execute()
db.<model>.update({ where: { id: '<UUID>' }, data: { ... }, select: { id: true } }).execute()
db.<model>.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### Query records

```typescript
const items = await db.agentCollaborator.findMany({
  select: { id: true }
}).execute();
```

## References

See the `references/` directory for detailed per-entity API documentation:

- [agent-collaborator](references/agent-collaborator.md)
- [agent](references/agent.md)
- [prompt](references/prompt.md)
- [agent-prompt](references/agent-prompt.md)
- [task](references/task.md)
- [contact](references/contact.md)
- [image](references/image.md)
- [contact-image](references/contact-image.md)
- [company](references/company.md)
- [company-image](references/company-image.md)
- [contact-company](references/contact-company.md)
- [event](references/event.md)
- [event-image](references/event-image.md)
- [contact-event](references/contact-event.md)
- [company-event](references/company-event.md)
- [venue](references/venue.md)
- [venue-image](references/venue-image.md)
- [event-venue](references/event-venue.md)
- [venue-link](references/venue-link.md)
- [note](references/note.md)
- [contact-note](references/contact-note.md)
- [company-note](references/company-note.md)
- [deal](references/deal.md)
- [deal-contact](references/deal-contact.md)
- [deal-company](references/deal-company.md)
- [deal-note](references/deal-note.md)
- [touchpoint](references/touchpoint.md)
- [event-note](references/event-note.md)
- [task-note](references/task-note.md)
- [email](references/email.md)
- [email-recipient](references/email-recipient.md)
- [email-note](references/email-note.md)
- [thread-participant](references/thread-participant.md)
- [email-attachment](references/email-attachment.md)
- [calendar-event](references/calendar-event.md)
- [calendar-event-contact](references/calendar-event-contact.md)
- [calendar-event-note](references/calendar-event-note.md)
- [calendar-event-task](references/calendar-event-task.md)
- [calendar-attendee](references/calendar-attendee.md)
- [event-link](references/event-link.md)
- [memory](references/memory.md)
- [contact-memory](references/contact-memory.md)
- [company-memory](references/company-memory.md)
- [company-link](references/company-link.md)
- [contact-relationship](references/contact-relationship.md)
- [project](references/project.md)
- [project-contact](references/project-contact.md)
- [task-project](references/task-project.md)
- [goal](references/goal.md)
- [habit](references/habit.md)
- [goal-habit](references/goal-habit.md)
- [activity-log](references/activity-log.md)
- [goal-project](references/goal-project.md)
- [task-contact](references/task-contact.md)
- [expense](references/expense.md)
- [expense-contact](references/expense-contact.md)
- [email-thread](references/email-thread.md)
- [interaction](references/interaction.md)
- [contact-email](references/contact-email.md)
- [contact-phone](references/contact-phone.md)
- [contact-address](references/contact-address.md)
- [contact-link](references/contact-link.md)
- [agent-log](references/agent-log.md)
- [rule](references/rule.md)
- [skill](references/skill.md)
- [tool-definition](references/tool-definition.md)
- [skill-tool](references/skill-tool.md)
- [tool-execution](references/tool-execution.md)
- [autonomy-record-link](references/autonomy-record-link.md)
- [autonomy-record](references/autonomy-record.md)
- [codebase-dependency](references/codebase-dependency.md)
- [codebase](references/codebase.md)
- [code-chunk](references/code-chunk.md)
- [runtime-state-dependency](references/runtime-state-dependency.md)
- [runtime-state](references/runtime-state.md)
- [runtime-log](references/runtime-log.md)
- [runtime-artifact](references/runtime-artifact.md)
- [runtime-metric](references/runtime-metric.md)
- [calendar](references/calendar.md)
- [provider-sync-state](references/provider-sync-state.md)
- [tag](references/tag.md)
- [raw-contact-url](references/raw-contact-url.md)
- [raw-contact-email](references/raw-contact-email.md)
- [raw-contact-phone](references/raw-contact-phone.md)
- [runtime-config](references/runtime-config.md)
- [runtime-event](references/runtime-event.md)
- [runtime-schedule](references/runtime-schedule.md)
- [conversation](references/conversation.md)
- [message](references/message.md)
- [raw-contact](references/raw-contact.md)
- [place](references/place.md)
- [trip](references/trip.md)
- [hiking-trail](references/hiking-trail.md)
