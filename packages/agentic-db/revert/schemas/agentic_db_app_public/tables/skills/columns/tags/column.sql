-- Revert: schemas/agentic_db_app_public/tables/skills/columns/tags/column


ALTER TABLE "agentic_db_app_public".skills 
  DROP COLUMN tags RESTRICT;


