-- Revert: schemas/agentic_db_app_public/tables/documents/columns/is_read/column


ALTER TABLE "agentic_db_app_public".documents 
  DROP COLUMN is_read RESTRICT;


