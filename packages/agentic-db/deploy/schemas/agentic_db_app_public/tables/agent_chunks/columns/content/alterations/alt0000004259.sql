-- Deploy: schemas/agentic_db_app_public/tables/agent_chunks/columns/content/alterations/alt0000004259
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_chunks/table
-- requires: schemas/agentic_db_app_public/tables/agent_chunks/columns/content/column
-- requires: schemas/agentic_db_app_public/tables/agent_chunks/columns/chunk_index/alterations/alt0000004258


ALTER TABLE agentic_db_app_public.agent_chunks 
  ALTER COLUMN content SET NOT NULL;

