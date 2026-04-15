-- Revert: schemas/agentic_db_app_public/tables/venue_links/columns/embedding_stale/alterations/alt0000013111


ALTER TABLE agentic_db_app_public.venue_links 
  ALTER COLUMN embedding_stale DROP NOT NULL;


