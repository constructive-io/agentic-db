-- Revert: schemas/agentic_db_app_public/tables/interactions/columns/embedding_updated_at/column


ALTER TABLE agentic_db_app_public.interactions 
  DROP COLUMN embedding_updated_at RESTRICT;


