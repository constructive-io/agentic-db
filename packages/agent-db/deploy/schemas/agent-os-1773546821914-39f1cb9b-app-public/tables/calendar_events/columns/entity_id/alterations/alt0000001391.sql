-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/calendar_events/columns/entity_id/alterations/alt0000001391
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/calendar_events/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/calendar_events/columns/entity_id/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/calendar_accounts/columns/last_synced_at/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".calendar_events 
  ALTER COLUMN entity_id SET NOT NULL;

