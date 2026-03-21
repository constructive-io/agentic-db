-- Revert: schemas/agentic_db_app_public/tables/skills/columns/content/column


ALTER TABLE "agentic_db_app_public".skills 
  DROP COLUMN content RESTRICT;


