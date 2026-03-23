-- Deploy: schemas/agentic_db_app_public/tables/agent_tasks_chunks/columns/metadata/alterations/alt0000002913
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_tasks_chunks/table
-- requires: schemas/agentic_db_app_public/tables/tags/indexes/tags_category_idx
-- requires: schemas/agentic_db_app_public/tables/agent_tasks_chunks/columns/metadata/column



ALTER TABLE agentic_db_app_public.agent_tasks_chunks 
    ALTER COLUMN metadata SET DEFAULT '{}'::jsonb;

