-- Revert: schemas/agentic_db_app_public/tables/skill_tools/columns/id/column


ALTER TABLE "agentic_db_app_public".skill_tools 
  DROP COLUMN id RESTRICT;


