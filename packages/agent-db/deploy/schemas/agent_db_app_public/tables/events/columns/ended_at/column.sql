-- Deploy: schemas/agent_db_app_public/tables/events/columns/ended_at/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/events/table
-- requires: schemas/agent_db_app_public/tables/events/columns/started_at/column


ALTER TABLE agent_db_app_public.events 
  ADD COLUMN ended_at timestamptz;

