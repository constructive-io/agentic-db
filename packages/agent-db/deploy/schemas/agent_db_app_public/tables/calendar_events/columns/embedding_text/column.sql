-- Deploy: schemas/agent_db_app_public/tables/calendar_events/columns/embedding_text/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/calendar_events/table
-- requires: schemas/agent_db_app_public/tables/calendar_events/columns/tags/column


ALTER TABLE agent_db_app_public.calendar_events 
  ADD COLUMN embedding_text text;

