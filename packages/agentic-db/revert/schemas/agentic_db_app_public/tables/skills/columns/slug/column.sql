-- Revert: schemas/agentic_db_app_public/tables/skills/columns/slug/column


ALTER TABLE "agentic_db_app_public".skills 
  DROP COLUMN slug RESTRICT;


