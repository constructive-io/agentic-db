-- Deploy: schemas/agentic_db_app_public/tables/agents/columns/id/alterations/alt0000000002
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agents/table
-- requires: schemas/agentic_db_app_public/tables/agents/columns/id/column


ALTER TABLE agentic_db_app_public.agents 
  ALTER COLUMN id SET DEFAULT uuidv7();

