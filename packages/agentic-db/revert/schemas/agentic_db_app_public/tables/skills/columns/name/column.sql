-- Revert: schemas/agentic_db_app_public/tables/skills/columns/name/column


ALTER TABLE "agentic_db_app_public".skills 
  DROP COLUMN name RESTRICT;


