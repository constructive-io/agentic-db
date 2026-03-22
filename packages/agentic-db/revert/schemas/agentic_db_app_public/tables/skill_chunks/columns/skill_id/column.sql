-- Revert: schemas/agentic_db_app_public/tables/skill_chunks/columns/skill_id/column


ALTER TABLE agentic_db_app_public.skill_chunks 
  DROP COLUMN skill_id RESTRICT;


