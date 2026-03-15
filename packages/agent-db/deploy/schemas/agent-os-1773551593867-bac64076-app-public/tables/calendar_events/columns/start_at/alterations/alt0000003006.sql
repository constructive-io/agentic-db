-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/calendar_events/columns/start_at/alterations/alt0000003006
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/calendar_events/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/calendar_events/columns/start_at/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/calendar_events/columns/description/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".calendar_events 
  ALTER COLUMN start_at SET NOT NULL;

