-- Revert: schemas/agentic_db_app_public/tables/skills/columns/last_accessed_at/column


ALTER TABLE "agentic_db_app_public".skills 
  DROP COLUMN last_accessed_at RESTRICT;


