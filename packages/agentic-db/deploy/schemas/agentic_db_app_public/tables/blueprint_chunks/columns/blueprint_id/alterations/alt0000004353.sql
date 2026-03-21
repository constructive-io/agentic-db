-- Deploy: schemas/agentic_db_app_public/tables/blueprint_chunks/columns/blueprint_id/alterations/alt0000004353
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/blueprint_chunks/table
-- requires: schemas/agentic_db_app_public/tables/blueprint_chunks/columns/blueprint_id/column
-- requires: schemas/agentic_db_app_public/tables/thread_chunks/indexes/thread_chunks_thread_id_idx


ALTER TABLE agentic_db_app_public.blueprint_chunks 
  ALTER COLUMN blueprint_id SET NOT NULL;

