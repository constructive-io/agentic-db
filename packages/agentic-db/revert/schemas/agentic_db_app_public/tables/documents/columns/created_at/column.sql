-- Revert: schemas/agentic_db_app_public/tables/documents/columns/created_at/column


ALTER TABLE "agentic_db_app_public".documents 
  DROP COLUMN created_at RESTRICT;


