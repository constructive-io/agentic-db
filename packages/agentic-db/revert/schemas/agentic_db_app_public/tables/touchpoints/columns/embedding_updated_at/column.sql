-- Revert: schemas/agentic_db_app_public/tables/touchpoints/columns/embedding_updated_at/column


ALTER TABLE agentic_db_app_public.touchpoints 
  DROP COLUMN embedding_updated_at RESTRICT;


