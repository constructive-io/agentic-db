-- Revert: schemas/agentic_db_app_public/tables/skills/columns/prerequisites/column


ALTER TABLE agentic_db_app_public.skills 
  DROP COLUMN prerequisites RESTRICT;


