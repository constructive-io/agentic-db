-- Deploy: schemas/agent_db_app_public/tables/calendar_events/columns/id/alterations/alt0000002207
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/calendar_events/table
-- requires: schemas/agent_db_app_public/tables/calendar_events/columns/id/column
-- requires: schemas/agent_db_app_public/tables/calendar_accounts/columns/last_synced_at/column


ALTER TABLE "agent_db_app_public".calendar_events 
  ALTER COLUMN id SET NOT NULL;

