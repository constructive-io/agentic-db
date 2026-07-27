-- Revert: schemas/agentic_db_app_public/tables/rules/columns/embedding_updated_at/column


ALTER TABLE agentic_db_app_public.rules 
  DROP COLUMN embedding_updated_at RESTRICT;


