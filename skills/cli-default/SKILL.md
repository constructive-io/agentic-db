---
name: cli-default
description: CLI tool (agent-os) for the default API — provides CRUD commands for 34 tables and 0 custom operations
---

# cli-default

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CLI tool (agent-os) for the default API — provides CRUD commands for 34 tables and 0 custom operations

## Usage

```bash
# Context management
agent-os context create <name> --endpoint <url>
agent-os context use <name>

# Authentication
agent-os auth set-token <token>

# CRUD for any table (e.g. company-image)
agent-os company-image list
agent-os company-image get --id <value>
agent-os company-image create --<field> <value>
```

## Examples

### Set up and query

```bash
agent-os context create local --endpoint http://localhost:5000/graphql
agent-os context use local
agent-os auth set-token <token>
agent-os company-image list
```

## References

See the `references/` directory for detailed per-entity API documentation:

- [context](references/context.md)
- [auth](references/auth.md)
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
- [message](references/message.md)
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
- [event](references/event.md)
- [contact](references/contact.md)
