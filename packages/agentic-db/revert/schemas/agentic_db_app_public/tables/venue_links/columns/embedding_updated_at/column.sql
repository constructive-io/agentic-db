-- Revert: schemas/agentic_db_app_public/tables/venue_links/columns/embedding_updated_at/column


ALTER TABLE agentic_db_app_public.venue_links 
  DROP COLUMN embedding_updated_at RESTRICT;


