---
name: orm-default
description: ORM client for the default API — provides typed CRUD operations for 35 tables and 0 custom operations
---

# orm-default

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM client for the default API — provides typed CRUD operations for 35 tables and 0 custom operations

## Usage

```typescript
// Import the ORM client
import { db } from './orm';

// Available models: companyEvent, companyImage, contactCompany, contactEvent, contactImage, dealContact, eventImage, eventVenue, ...
db.<model>.findMany({ select: { id: true } }).execute()
db.<model>.findOne({ id: '<value>', select: { id: true } }).execute()
db.<model>.create({ data: { ... }, select: { id: true } }).execute()
db.<model>.update({ where: { id: '<value>' }, data: { ... }, select: { id: true } }).execute()
db.<model>.delete({ where: { id: '<value>' } }).execute()
```

## Examples

### Query records

```typescript
const items = await db.companyEvent.findMany({
  select: { id: true }
}).execute();
```

## References

See the `references/` directory for detailed per-entity API documentation:

- [company-event](references/company-event.md)
- [company-image](references/company-image.md)
- [contact-company](references/contact-company.md)
- [contact-event](references/contact-event.md)
- [contact-image](references/contact-image.md)
- [deal-contact](references/deal-contact.md)
- [event-image](references/event-image.md)
- [event-venue](references/event-venue.md)
- [venue-image](references/venue-image.md)
- [calendar-sync](references/calendar-sync.md)
- [file](references/file.md)
- [email-account](references/email-account.md)
- [execution-log](references/execution-log.md)
- [chat](references/chat.md)
- [project](references/project.md)
- [repository](references/repository.md)
- [session](references/session.md)
- [blueprint](references/blueprint.md)
- [image](references/image.md)
- [milestone](references/milestone.md)
- [chat-message](references/chat-message.md)
- [chunk](references/chunk.md)
- [memory](references/memory.md)
- [deal](references/deal.md)
- [document](references/document.md)
- [task](references/task.md)
- [rule](references/rule.md)
- [skill](references/skill.md)
- [expense](references/expense.md)
- [note](references/note.md)
- [company](references/company.md)
- [venue](references/venue.md)
- [contact](references/contact.md)
- [event](references/event.md)
- [message](references/message.md)
