-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/calendar_events/columns/status/alterations/alt0000001399
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/calendar_events/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/calendar_events/columns/status/column
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/calendar_events/columns/recurrence_rule/column



ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".calendar_events 
    ALTER COLUMN status SET DEFAULT 'confirmed';

