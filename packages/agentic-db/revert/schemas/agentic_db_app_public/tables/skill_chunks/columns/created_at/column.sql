-- Revert: schemas/agentic_db_app_public/tables/skill_chunks/columns/created_at/column


ALTER TABLE agentic_db_app_public.skill_chunks 
  DROP COLUMN created_at RESTRICT;


