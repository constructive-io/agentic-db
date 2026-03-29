-- Deploy: schemas/agentic_db_app_public/tables/prompts_chunks/columns/prompt_id/alterations/alt0000005559
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/prompts_chunks/table
-- requires: schemas/agentic_db_app_public/tables/prompts_chunks/columns/prompt_id/column
-- requires: schemas/agentic_db_app_public/tables/venues_chunks/indexes/venues_chunks_chunk_index_idx


ALTER TABLE agentic_db_app_public.prompts_chunks 
  ALTER COLUMN prompt_id SET NOT NULL;

