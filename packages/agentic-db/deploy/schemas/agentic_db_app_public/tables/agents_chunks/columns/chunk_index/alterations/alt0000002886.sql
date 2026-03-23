-- Deploy: schemas/agentic_db_app_public/tables/agents_chunks/columns/chunk_index/alterations/alt0000002886
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agents_chunks/table
-- requires: schemas/agentic_db_app_public/tables/tags/indexes/tags_category_idx
-- requires: schemas/agentic_db_app_public/tables/agents_chunks/columns/chunk_index/column


ALTER TABLE agentic_db_app_public.agents_chunks 
  ALTER COLUMN chunk_index SET NOT NULL;

