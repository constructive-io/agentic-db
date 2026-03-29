-- Deploy: schemas/agentic_db_app_public/tables/tasks_chunks/columns/tasks_id/alterations/alt0000005535
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tasks_chunks/table
-- requires: schemas/agentic_db_app_public/tables/tasks_chunks/columns/tasks_id/column
-- requires: schemas/agentic_db_app_public/tables/venues_chunks/indexes/venues_chunks_chunk_index_idx


ALTER TABLE agentic_db_app_public.tasks_chunks 
  ALTER COLUMN tasks_id SET NOT NULL;

