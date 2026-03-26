-- Revert: schemas/agentic_db_app_public/tables/skill_tools/columns/skill_id/alterations/alt0000002076


ALTER TABLE "agentic_db_app_public".skill_tools 
  ALTER COLUMN skill_id DROP NOT NULL;


