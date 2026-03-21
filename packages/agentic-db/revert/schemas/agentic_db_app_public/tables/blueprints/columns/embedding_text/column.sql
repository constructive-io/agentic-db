-- Revert: schemas/agentic_db_app_public/tables/blueprints/columns/embedding_text/column


ALTER TABLE agentic_db_app_public.blueprints 
  DROP COLUMN embedding_text RESTRICT;


