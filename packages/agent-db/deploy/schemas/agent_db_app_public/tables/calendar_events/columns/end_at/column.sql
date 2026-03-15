-- Deploy: schemas/agent_db_app_public/tables/calendar_events/columns/end_at/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/calendar_events/table
-- requires: schemas/agent_db_app_public/tables/calendar_events/columns/start_at/alterations/alt0000004567


ALTER TABLE "agent_db_app_public".calendar_events 
  ADD COLUMN end_at timestamptz;

