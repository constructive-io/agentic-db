-- Revert: schemas/agentic_db_app_public/tables/documents/columns/source_type/column


ALTER TABLE "agentic_db_app_public".documents 
  DROP COLUMN source_type RESTRICT;


