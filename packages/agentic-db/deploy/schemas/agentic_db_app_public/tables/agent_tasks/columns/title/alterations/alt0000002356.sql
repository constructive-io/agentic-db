-- Deploy: schemas/agentic_db_app_public/tables/agent_tasks/columns/title/alterations/alt0000002356
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_tasks/table
-- requires: schemas/agentic_db_app_public/tables/tags/indexes/tags_category_idx
-- requires: schemas/agentic_db_app_public/tables/agent_tasks/columns/title/column


ALTER TABLE agentic_db_app_public.agent_tasks 
  ALTER COLUMN title SET NOT NULL;

