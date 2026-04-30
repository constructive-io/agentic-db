-- Revert: schemas/agentic_db_app_public/tables/places/columns/embedding_stale/alterations/alt0000000613


ALTER TABLE agentic_db_app_public.places 
  ALTER COLUMN embedding_stale DROP NOT NULL;


