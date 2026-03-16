-- Revert: schemas/agentic_db_app_public/tables/documents/columns/overview/column


ALTER TABLE "agentic_db_app_public".documents 
  DROP COLUMN overview RESTRICT;


