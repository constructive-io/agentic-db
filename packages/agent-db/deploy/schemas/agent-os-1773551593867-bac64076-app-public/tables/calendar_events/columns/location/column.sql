-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/calendar_events/columns/location/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/calendar_events/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/calendar_events/columns/all_day/alterations/alt0000003007


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".calendar_events 
  ADD COLUMN location text;

