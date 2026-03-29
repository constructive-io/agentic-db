-- Revert: schemas/agentic_db_app_public/tables/skill_tools/columns/id/alterations/alt0000001649


ALTER TABLE "agentic_db_app_public".skill_tools 
  ALTER COLUMN id DROP NOT NULL;


