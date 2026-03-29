-- Deploy: schemas/agentic_db_app_public/tables/skills/columns/id/alterations/alt0000005422
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/skills/table
-- requires: schemas/agentic_db_app_public/tables/skills/columns/id/column
-- requires: schemas/agentic_db_app_public/tables/venues_chunks/indexes/venues_chunks_chunk_index_idx


ALTER TABLE agentic_db_app_public.skills 
  ALTER COLUMN id SET NOT NULL;

