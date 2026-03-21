-- Revert: schemas/agentic_db_app_public/tables/skills/columns/abstract/column


ALTER TABLE agentic_db_app_public.skills 
  DROP COLUMN abstract RESTRICT;


