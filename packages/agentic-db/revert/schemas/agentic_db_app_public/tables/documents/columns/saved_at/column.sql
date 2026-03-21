-- Revert: schemas/agentic_db_app_public/tables/documents/columns/saved_at/column


ALTER TABLE "agentic_db_app_public".documents 
  DROP COLUMN saved_at RESTRICT;


