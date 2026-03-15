-- Deploy: schemas/agent_db_app_public/tables/sessions/columns/ended_at/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/sessions/table
-- requires: schemas/agent_db_app_public/tables/sessions/columns/started_at/column


ALTER TABLE agent_db_app_public.sessions 
  ADD COLUMN ended_at timestamptz;

