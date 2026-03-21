-- Revert: schemas/agentic_db_app_public/tables/documents/columns/id/column


ALTER TABLE "agentic_db_app_public".documents 
  DROP COLUMN id RESTRICT;


