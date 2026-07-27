-- Revert: schemas/agentic_db_app_public/tables/images/columns/embedding_updated_at/column


ALTER TABLE agentic_db_app_public.images 
  DROP COLUMN embedding_updated_at RESTRICT;


