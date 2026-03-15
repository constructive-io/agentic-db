-- Deploy: schemas/agent_db_app_public/tables/session_archives/columns/raw_messages/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/session_archives/table
-- requires: schemas/agent_db_app_public/tables/session_archives/columns/message_range_end/column


ALTER TABLE agent_db_app_public.session_archives 
  ADD COLUMN raw_messages jsonb;

