---
name: crm-venues
description: CRUD operations for CRM venues (hackathon locations, meeting spaces)
---

# CRM Venues

Manage venues for events, including hackathon locations.

## Table Schema

| Field | Type | Notes |
|-------|------|-------|
| `id` | uuid | Primary key |
| `name` | text | Venue name |
| `address` | text | |
| `city` | text | |
| `neighborhood` | text | e.g., "Mission" |
| `capacity` | int | |
| `rental_cost_usd` | numeric | |
| `rental_period` | text | per hour, per day |
| `venue_types` | text[] | hackathon, meetup, conference |
| `amenities` | text[] | wifi, projector, catering |
| `contact_name` | text | |
| `contact_email` | text | |
| `status` | text | potential, confirmed, rejected |
| `notes` | text | |
| `website` | text | |
| `created_at` | timestamptz | |
| `updated_at` | timestamptz | |

## Insert Venue

```typescript
async function insertVenue(db, data: {
  name: string;
  neighborhood?: string;
  city?: string;
  status?: string;
  notes?: string;
}) {
  return db.venue.create({
    data: {
      name: data.name,
      neighborhood: data.neighborhood,
      city: data.city || 'San Francisco',
      status: data.status || 'potential',
      notes: data.notes,
    },
    select: { id: true, name: true, status: true },
  }).execute();
}
```

## Record Venue Visit

```typescript
async function recordVenueVisit(db, data: {
  venueId: string;
  visitedAt: Date;
  visitedBy: string[];
  notes?: string;
  rating?: number;
  status?: string;
}) {
  return db.venueVisit.create({
    data: {
      venueId: data.venueId,
      visitedAt: data.visitedAt.toISOString(),
      visitedBy: data.visitedBy,
      notes: data.notes,
      rating: data.rating,
      status: data.status || 'scouted',
    },
    select: { id: true, visitedBy: true },
  }).execute();
}
```

## List Potential Venues

```typescript
async function listPotentialVenues(db) {
  return db.venue.findMany({
    where: { status: { equalTo: 'potential' } },
    orderBy: [{ name: 'ASC' }],
    select: { id: true, name: true, neighborhood: true, city: true, notes: true },
  }).execute();
}
```
