-- Revert: schemas/agentic_db_app_public/tables/skill_tools/columns/skill_id/column


ALTER TABLE agentic_db_app_public.skill_tools 
  DROP COLUMN skill_id RESTRICT;


