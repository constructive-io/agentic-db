-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/calendar_events/columns/all_day/alterations/alt0000001398
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/calendar_events/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/calendar_events/columns/end_at/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/calendar_events/columns/all_day/column



ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".calendar_events 
    ALTER COLUMN all_day SET DEFAULT false;

