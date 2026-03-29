-- Revert: schemas/agentic_db_app_public/tables/skills_chunks/columns/skill_id/alterations/alt0000005561


ALTER TABLE agentic_db_app_public.skills_chunks 
  ALTER COLUMN skill_id DROP NOT NULL;


