-- Revert: schemas/agentic_db_app_public/tables/notes/columns/updated_at/column


ALTER TABLE "agentic_db_app_public".notes 
  DROP COLUMN updated_at RESTRICT;


