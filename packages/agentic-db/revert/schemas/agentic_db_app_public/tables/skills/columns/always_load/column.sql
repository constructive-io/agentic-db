-- Revert: schemas/agentic_db_app_public/tables/skills/columns/always_load/column


ALTER TABLE "agentic_db_app_public".skills 
  DROP COLUMN always_load RESTRICT;


