-- Revert: schemas/agentic_db_app_public/tables/documents/columns/url/column


ALTER TABLE "agentic_db_app_public".documents 
  DROP COLUMN url RESTRICT;


