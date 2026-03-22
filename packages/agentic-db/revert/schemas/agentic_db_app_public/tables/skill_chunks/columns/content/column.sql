-- Revert: schemas/agentic_db_app_public/tables/skill_chunks/columns/content/column


ALTER TABLE agentic_db_app_public.skill_chunks 
  DROP COLUMN content RESTRICT;


