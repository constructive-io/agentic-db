-- Revert: schemas/agentic_db_app_public/tables/place_chunks/columns/embedding_stale/alterations/alt0000002843


ALTER TABLE agentic_db_app_public.place_chunks 
  ALTER COLUMN embedding_stale DROP NOT NULL;


