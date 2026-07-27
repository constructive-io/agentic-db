-- Revert: schemas/agentic_db_app_public/tables/trips/columns/embedding_updated_at/column


ALTER TABLE agentic_db_app_public.trips 
  DROP COLUMN embedding_updated_at RESTRICT;


