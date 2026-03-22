-- Revert: schemas/agentic_db_app_public/tables/venue_chunks/columns/embedding_stale/alterations/alt0000005704


ALTER TABLE agentic_db_app_public.venue_chunks 
  ALTER COLUMN embedding_stale DROP NOT NULL;


