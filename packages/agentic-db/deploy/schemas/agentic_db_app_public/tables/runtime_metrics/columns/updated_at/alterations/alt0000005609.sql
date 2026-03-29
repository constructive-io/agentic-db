-- Deploy: schemas/agentic_db_app_public/tables/runtime_metrics/columns/updated_at/alterations/alt0000005609
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_metrics/table
-- requires: schemas/agentic_db_app_public/tables/runtime_metrics/columns/updated_at/column
-- requires: schemas/agentic_db_app_public/tables/tool_definitions_chunks/indexes/tool_definitions_chunks_chunk_index_idx


ALTER TABLE agentic_db_app_public.runtime_metrics 
  ALTER COLUMN updated_at SET NOT NULL;

