-- Deploy: schemas/agentic_db_app_public/tables/hiking_trails_chunks/constraints/hiking_trails_chunks_hiking_trail_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/hiking_trails/table
-- requires: schemas/agentic_db_app_public/tables/hiking_trails_chunks/table
-- requires: schemas/agentic_db_app_public/tables/codebases_chunks/indexes/codebases_chunks_chunk_index_idx


ALTER TABLE agentic_db_app_public.hiking_trails_chunks 
  ADD CONSTRAINT hiking_trails_chunks_hiking_trail_id_fkey 
    FOREIGN KEY(hiking_trail_id) 
    REFERENCES agentic_db_app_public.hiking_trails (id) 
    ON DELETE CASCADE;

