-- Deploy: schemas/agent_db_app_public/tables/sessions/columns/started_at/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/sessions/table
-- requires: schemas/agent_db_app_public/tables/sessions/columns/agent_id/column


ALTER TABLE agent_db_app_public.sessions 
  ADD COLUMN started_at timestamptz;

