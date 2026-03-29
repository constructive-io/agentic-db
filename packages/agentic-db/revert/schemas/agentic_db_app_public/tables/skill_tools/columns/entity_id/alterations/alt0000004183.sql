-- Revert: schemas/agentic_db_app_public/tables/skill_tools/columns/entity_id/alterations/alt0000004183


ALTER TABLE agentic_db_app_public.skill_tools 
  ALTER COLUMN entity_id DROP NOT NULL;


