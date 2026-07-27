-- Revert: schemas/agentic_db_app_public/tables/places/columns/embedding_updated_at/column


ALTER TABLE agentic_db_app_public.places 
  DROP COLUMN embedding_updated_at RESTRICT;


