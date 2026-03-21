-- Deploy: schemas/agentic_db_app_public/tables/agents/columns/role/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agents/table
-- requires: schemas/agentic_db_app_public/tables/agents/columns/name/alterations/alt0000004099


ALTER TABLE agentic_db_app_public.agents 
  ADD COLUMN role text;

