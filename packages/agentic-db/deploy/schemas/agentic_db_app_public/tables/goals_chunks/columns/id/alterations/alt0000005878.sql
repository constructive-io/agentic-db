-- Deploy: schemas/agentic_db_app_public/tables/goals_chunks/columns/id/alterations/alt0000005878
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/goals_chunks/table
-- requires: schemas/agentic_db_app_public/tables/goals_chunks/columns/id/column
-- requires: schemas/agentic_db_app_public/tables/codebases_chunks/indexes/codebases_chunks_chunk_index_idx


ALTER TABLE agentic_db_app_public.goals_chunks 
  ALTER COLUMN id SET NOT NULL;

