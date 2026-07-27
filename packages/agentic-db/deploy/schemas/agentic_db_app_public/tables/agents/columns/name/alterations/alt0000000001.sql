-- Deploy: schemas/agentic_db_app_public/tables/agents/columns/name/alterations/alt0000000001
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agents/table
-- requires: schemas/agentic_db_app_public/tables/agents/columns/name/column


ALTER TABLE agentic_db_app_public.agents 
  ALTER COLUMN name SET NOT NULL;

