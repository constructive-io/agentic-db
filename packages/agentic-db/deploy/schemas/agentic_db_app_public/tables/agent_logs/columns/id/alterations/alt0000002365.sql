-- Deploy: schemas/agentic_db_app_public/tables/agent_logs/columns/id/alterations/alt0000002365
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_logs/table
-- requires: schemas/agentic_db_app_public/tables/agent_logs/columns/id/column
-- requires: schemas/agentic_db_app_public/tables/tags/indexes/tags_category_idx


ALTER TABLE agentic_db_app_public.agent_logs 
  ALTER COLUMN id SET NOT NULL;

