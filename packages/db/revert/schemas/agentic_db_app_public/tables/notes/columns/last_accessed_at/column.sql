-- Revert: schemas/agentic_db_app_public/tables/notes/columns/last_accessed_at/column


ALTER TABLE "agentic_db_app_public".notes 
  DROP COLUMN last_accessed_at RESTRICT;


