-- Revert: schemas/agentic_db_app_public/tables/documents/columns/content/column


ALTER TABLE "agentic_db_app_public".documents 
  DROP COLUMN content RESTRICT;


