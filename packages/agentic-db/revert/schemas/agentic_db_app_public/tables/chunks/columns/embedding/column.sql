-- Revert: schemas/agentic_db_app_public/tables/chunks/columns/embedding/column


ALTER TABLE agentic_db_app_public.chunks 
  DROP COLUMN embedding RESTRICT;


