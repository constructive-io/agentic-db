-- Revert: schemas/agentic_db_app_public/tables/skills/columns/procedure/column


ALTER TABLE agentic_db_app_public.skills 
  DROP COLUMN procedure RESTRICT;


