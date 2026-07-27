-- Deploy: schemas/agentic_db_app_public/tables/agents/columns/tags/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agents/table


ALTER TABLE agentic_db_app_public.agents 
  ADD COLUMN tags citext[];

