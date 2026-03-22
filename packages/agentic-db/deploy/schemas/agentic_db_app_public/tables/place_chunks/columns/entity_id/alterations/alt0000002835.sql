-- Deploy: schemas/agentic_db_app_public/tables/place_chunks/columns/entity_id/alterations/alt0000002835
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/place_chunks/table
-- requires: schemas/agentic_db_app_public/tables/place_chunks/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/code_chunks/indexes/code_chunks_language_idx


ALTER TABLE agentic_db_app_public.place_chunks 
  ALTER COLUMN entity_id SET NOT NULL;

