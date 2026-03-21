-- Deploy: schemas/agentic_db_app_public/tables/agents/columns/last_active_at/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agents/table
-- requires: schemas/agentic_db_app_public/tables/agents/columns/focus/column


ALTER TABLE agentic_db_app_public.agents 
  ADD COLUMN last_active_at timestamptz;

