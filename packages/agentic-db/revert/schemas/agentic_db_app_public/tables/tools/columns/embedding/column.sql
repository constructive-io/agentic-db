-- Revert: schemas/agentic_db_app_public/tables/tools/columns/embedding/column


ALTER TABLE agentic_db_app_public.tools 
  DROP COLUMN embedding RESTRICT;


