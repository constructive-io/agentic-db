-- Revert: schemas/agentic_db_app_public/tables/skills/columns/created_at/column


ALTER TABLE agentic_db_app_public.skills 
  DROP COLUMN created_at RESTRICT;


