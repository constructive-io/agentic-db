-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/calendar_events/columns/title/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/calendar_events/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/calendar_events/columns/remote_id/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".calendar_events 
  ADD COLUMN title text;

