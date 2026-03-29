-- Deploy: schemas/agentic_db_app_public/tables/goals_chunks/columns/goals_id/alterations/alt0000005881
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/goals_chunks/table
-- requires: schemas/agentic_db_app_public/tables/goals_chunks/columns/goals_id/column
-- requires: schemas/agentic_db_app_public/tables/codebases_chunks/indexes/codebases_chunks_chunk_index_idx


ALTER TABLE agentic_db_app_public.goals_chunks 
  ALTER COLUMN goals_id SET NOT NULL;

