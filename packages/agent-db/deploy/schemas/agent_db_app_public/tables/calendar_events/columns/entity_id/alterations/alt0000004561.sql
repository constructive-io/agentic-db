-- Deploy: schemas/agent_db_app_public/tables/calendar_events/columns/entity_id/alterations/alt0000004561
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/calendar_events/table
-- requires: schemas/agent_db_app_public/tables/calendar_events/columns/entity_id/column
-- requires: schemas/agent_db_app_public/tables/calendar_accounts/columns/last_synced_at/column


ALTER TABLE "agent_db_app_public".calendar_events 
  ALTER COLUMN entity_id SET NOT NULL;

