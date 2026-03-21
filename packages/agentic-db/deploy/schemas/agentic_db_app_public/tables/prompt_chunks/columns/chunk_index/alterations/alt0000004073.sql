-- Deploy: schemas/agentic_db_app_public/tables/prompt_chunks/columns/chunk_index/alterations/alt0000004073
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/prompt_chunks/table
-- requires: schemas/agentic_db_app_public/tables/prompt_chunks/columns/chunk_index/column
-- requires: schemas/agentic_db_app_public/tables/prompt_chunks/columns/updated_at/alterations/alt0000004072


ALTER TABLE agentic_db_app_public.prompt_chunks 
  ALTER COLUMN chunk_index SET NOT NULL;

