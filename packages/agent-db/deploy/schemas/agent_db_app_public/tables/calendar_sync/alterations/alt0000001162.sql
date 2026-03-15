-- Deploy: schemas/agent_db_app_public/tables/calendar_sync/alterations/alt0000001162
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/calendar_sync/table
-- requires: schemas/agent_db_app_public/tables/messages/columns/embedding/column


ALTER TABLE agent_db_app_public.calendar_sync 
  DISABLE ROW LEVEL SECURITY;

