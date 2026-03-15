-- Deploy: schemas/agent_db_app_public/tables/sessions/columns/status/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/sessions/table
-- requires: schemas/agent_db_app_public/tables/sessions/columns/ended_at/column


ALTER TABLE agent_db_app_public.sessions 
  ADD COLUMN status text;

