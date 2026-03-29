-- Deploy: schemas/agentic_db_app_public/tables/hiking_trails_chunks/columns/hiking_trail_id/alterations/alt0000005929
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/hiking_trails_chunks/table
-- requires: schemas/agentic_db_app_public/tables/hiking_trails_chunks/columns/hiking_trail_id/column
-- requires: schemas/agentic_db_app_public/tables/codebases_chunks/indexes/codebases_chunks_chunk_index_idx


ALTER TABLE agentic_db_app_public.hiking_trails_chunks 
  ALTER COLUMN hiking_trail_id SET NOT NULL;

