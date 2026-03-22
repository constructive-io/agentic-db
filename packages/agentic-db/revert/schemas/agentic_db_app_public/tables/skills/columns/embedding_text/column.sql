-- Revert: schemas/agentic_db_app_public/tables/skills/columns/embedding_text/column


ALTER TABLE agentic_db_app_public.skills 
  DROP COLUMN embedding_text RESTRICT;


