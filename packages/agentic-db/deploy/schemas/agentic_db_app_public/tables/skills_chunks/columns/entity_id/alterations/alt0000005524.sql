-- Deploy: schemas/agentic_db_app_public/tables/skills_chunks/columns/entity_id/alterations/alt0000005524
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/skills_chunks/table
-- requires: schemas/agentic_db_app_public/tables/skills_chunks/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/venues_chunks/indexes/venues_chunks_chunk_index_idx


ALTER TABLE agentic_db_app_public.skills_chunks 
  ALTER COLUMN entity_id SET NOT NULL;

