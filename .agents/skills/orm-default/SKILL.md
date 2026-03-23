---
name: orm-default
description: ORM client for the default API — provides typed CRUD operations for 90 tables and 0 custom operations
---

# orm-default

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM client for the default API — provides typed CRUD operations for 90 tables and 0 custom operations

## Usage

```typescript
// Import the ORM client
import { db } from './orm';

// Available models: agentCollaborator, agent, agentLog, agentLogsChunk, agentsChunk, agentTask, agentTasksChunk, autonomyRecord, ...
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
- [agent-log](references/agent-log.md)
- [agent-logs-chunk](references/agent-logs-chunk.md)
- [agents-chunk](references/agents-chunk.md)
- [agent-task](references/agent-task.md)
- [agent-tasks-chunk](references/agent-tasks-chunk.md)
- [autonomy-record](references/autonomy-record.md)
- [autonomy-record-link](references/autonomy-record-link.md)
- [autonomy-records-chunk](references/autonomy-records-chunk.md)
- [codebase-dependency](references/codebase-dependency.md)
- [codebases-chunk](references/codebases-chunk.md)
- [codebasis](references/codebasis.md)
- [code-chunk](references/code-chunk.md)
- [companies-chunk](references/companies-chunk.md)
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
- [contact-company](references/contact-company.md)
- [deal](references/deal.md)
- [contact-event](references/contact-event.md)
- [contact-image](references/contact-image.md)
- [contact-link](references/contact-link.md)
- [contact-memory](references/contact-memory.md)
- [contact-note](references/contact-note.md)
- [project](references/project.md)
- [contacts-chunk](references/contacts-chunk.md)
- [conversation](references/conversation.md)
- [conversations-chunk](references/conversations-chunk.md)
- [deal-contact](references/deal-contact.md)
- [deal-note](references/deal-note.md)
- [deals-chunk](references/deals-chunk.md)
- [event-image](references/event-image.md)
- [event-link](references/event-link.md)
- [event-note](references/event-note.md)
- [events-chunk](references/events-chunk.md)
- [event-venue](references/event-venue.md)
- [venue](references/venue.md)
- [goal](references/goal.md)
- [goal-habit](references/goal-habit.md)
- [habit](references/habit.md)
- [goal-project](references/goal-project.md)
- [goals-chunk](references/goals-chunk.md)
- [habits-chunk](references/habits-chunk.md)
- [hiking-trail](references/hiking-trail.md)
- [hiking-trails-chunk](references/hiking-trails-chunk.md)
- [trip](references/trip.md)
- [interaction](references/interaction.md)
- [interactions-chunk](references/interactions-chunk.md)
- [itinerary-item](references/itinerary-item.md)
- [itinerary-items-chunk](references/itinerary-items-chunk.md)
- [memories-chunk](references/memories-chunk.md)
- [message](references/message.md)
- [messages-chunk](references/messages-chunk.md)
- [notes-chunk](references/notes-chunk.md)
- [place](references/place.md)
- [places-chunk](references/places-chunk.md)
- [project-contact](references/project-contact.md)
- [projects-chunk](references/projects-chunk.md)
- [rule](references/rule.md)
- [rules-chunk](references/rules-chunk.md)
- [runtime-artifact](references/runtime-artifact.md)
- [runtime-config](references/runtime-config.md)
- [runtime-event](references/runtime-event.md)
- [runtime-log](references/runtime-log.md)
- [runtime-logs-chunk](references/runtime-logs-chunk.md)
- [runtime-metric](references/runtime-metric.md)
- [runtime-schedule](references/runtime-schedule.md)
- [runtime-state](references/runtime-state.md)
- [runtime-state-dependency](references/runtime-state-dependency.md)
- [runtime-states-chunk](references/runtime-states-chunk.md)
- [skill](references/skill.md)
- [skills-chunk](references/skills-chunk.md)
- [tag](references/tag.md)
- [tool-definition](references/tool-definition.md)
- [tool-execution](references/tool-execution.md)
- [trip-hiking-trail](references/trip-hiking-trail.md)
- [trip-place](references/trip-place.md)
- [trips-chunk](references/trips-chunk.md)
- [venue-image](references/venue-image.md)
- [venue-link](references/venue-link.md)
- [venues-chunk](references/venues-chunk.md)
