-- Revert: schemas/agentic_db_app_public/tables/skills/columns/updated_at/column


ALTER TABLE "agentic_db_app_public".skills 
  DROP COLUMN updated_at RESTRICT;


