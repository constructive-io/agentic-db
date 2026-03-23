-- Revert: schemas/agentic_db_app_public/tables/skills/columns/implementation/column


ALTER TABLE "agentic_db_app_public".skills 
  DROP COLUMN implementation RESTRICT;


