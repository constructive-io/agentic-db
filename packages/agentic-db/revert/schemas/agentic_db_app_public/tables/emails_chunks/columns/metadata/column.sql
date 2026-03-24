-- Revert: schemas/agentic_db_app_public/tables/emails_chunks/columns/metadata/column


ALTER TABLE "agentic_db_app_public".emails_chunks 
  DROP COLUMN metadata RESTRICT;


