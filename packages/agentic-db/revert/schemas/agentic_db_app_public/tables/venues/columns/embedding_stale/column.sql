-- Revert: schemas/agentic_db_app_public/tables/venues/columns/embedding_stale/column


ALTER TABLE agentic_db_app_public.venues 
  DROP COLUMN embedding_stale RESTRICT;


