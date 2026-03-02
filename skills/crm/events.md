---
name: crm-events
description: CRUD operations for CRM events (meetings, hackathons, conferences)
---

# CRM Events

Manage events like meetings, hackathons, and conferences.

## Table Schema

| Field | Type | Notes |
|-------|------|-------|
| `id` | uuid | Primary key |
| `entity_id` | uuid | Org scope |
| `name` | text | Event name |
| `event_type` | text | hackathon, meeting, conference, etc. |
| `hosting_role` | enum | hosted, attended, co_hosted, sponsored |
| `location` | text | Venue name |
| `city` | text | |
| `url` | text | Event URL |
| `started_at` | timestamptz | |
| `ended_at` | timestamptz | |
| `notes` | text | |
| `created_at` | timestamptz | |
| `updated_at` | timestamptz | |

## Insert Event

```typescript
async function insertEvent(db, data: {
  entityId: string;
  name: string;
  eventType: string;
  hostingRole?: 'hosted' | 'attended' | 'co_hosted' | 'sponsored';
  location?: string;
  city?: string;
  startedAt: Date;
  endedAt?: Date;
  notes?: string;
}) {
  return db.event.create({
    data: {
      entityId: data.entityId,
      name: data.name,
      eventType: data.eventType,
      hostingRole: data.hostingRole || 'attended',
      location: data.location,
      city: data.city,
      startedAt: data.startedAt.toISOString(),
      endedAt: data.endedAt?.toISOString(),
      notes: data.notes,
    },
    select: { id: true, name: true },
  }).execute();
}
```

## Link Event to Venue

```typescript
async function linkEventToVenue(db, eventId: string, venueId: string) {
  return db.eventVenue.create({
    data: { eventId, venueId },
    select: { eventId: true, venueId: true },
  }).execute();
}
```

## See Also

- `skills/crm/venues.md` — Venue management
- `skills/crm/contacts.md` — Link contacts to events
