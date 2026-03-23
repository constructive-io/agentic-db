-- Revert: schemas/agentic_db_app_public/tables/skills/columns/embedding/column


ALTER TABLE agentic_db_app_public.skills 
  DROP COLUMN embedding RESTRICT;


