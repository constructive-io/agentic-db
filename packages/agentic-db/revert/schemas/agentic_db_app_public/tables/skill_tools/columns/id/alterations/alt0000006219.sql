-- Revert: schemas/agentic_db_app_public/tables/skill_tools/columns/id/alterations/alt0000006219


ALTER TABLE agentic_db_app_public.skill_tools 
  ALTER COLUMN id DROP NOT NULL;


