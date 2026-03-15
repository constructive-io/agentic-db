-- Deploy: schemas/agent_db_app_public/tables/calendar_events/columns/title/alterations/alt0000004566
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/calendar_events/table
-- requires: schemas/agent_db_app_public/tables/calendar_events/columns/title/column
-- requires: schemas/agent_db_app_public/tables/calendar_events/columns/remote_id/column


ALTER TABLE "agent_db_app_public".calendar_events 
  ALTER COLUMN title SET NOT NULL;

