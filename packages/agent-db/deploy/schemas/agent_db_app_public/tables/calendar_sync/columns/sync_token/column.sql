-- Deploy: schemas/agent_db_app_public/tables/calendar_sync/columns/sync_token/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/calendar_sync/table
-- requires: schemas/agent_db_app_public/tables/calendar_sync/columns/provider/column


ALTER TABLE agent_db_app_public.calendar_sync 
  ADD COLUMN sync_token text;

