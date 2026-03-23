-- Revert: schemas/agentic_db_app_public/tables/skills/columns/config/column


ALTER TABLE "agentic_db_app_public".skills 
  DROP COLUMN config RESTRICT;


