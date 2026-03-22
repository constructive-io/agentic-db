-- Revert: schemas/agentic_db_app_public/tables/skill_chunks/columns/id/column


ALTER TABLE "agentic_db_app_public".skill_chunks 
  DROP COLUMN id RESTRICT;


