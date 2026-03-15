-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/calendar_events/columns/recurrence_rule/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/calendar_events/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/calendar_events/columns/location/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".calendar_events 
  ADD COLUMN recurrence_rule text;

