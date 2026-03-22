-- Deploy: schemas/agentic_db_app_public/tables/agents/columns/system_prompt/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agents/table
-- requires: schemas/agentic_db_app_public/tables/agents/columns/description/column


ALTER TABLE agentic_db_app_public.agents 
  ADD COLUMN system_prompt text;

