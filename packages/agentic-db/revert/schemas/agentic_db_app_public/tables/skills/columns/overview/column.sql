-- Revert: schemas/agentic_db_app_public/tables/skills/columns/overview/column


ALTER TABLE "agentic_db_app_public".skills 
  DROP COLUMN overview RESTRICT;


