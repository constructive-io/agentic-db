-- Revert: schemas/agentic_db_app_public/tables/skills_chunks/columns/skill_id/column


ALTER TABLE agentic_db_app_public.skills_chunks 
  DROP COLUMN skill_id RESTRICT;


