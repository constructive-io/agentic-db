-- Revert: schemas/agentic_db_app_public/tables/skills/columns/id/column


ALTER TABLE "agentic_db_app_public".skills 
  DROP COLUMN id RESTRICT;


