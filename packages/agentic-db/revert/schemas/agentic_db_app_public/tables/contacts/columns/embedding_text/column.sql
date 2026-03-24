-- Revert: schemas/agentic_db_app_public/tables/contacts/columns/embedding_text/column


ALTER TABLE "agentic_db_app_public".contacts 
  DROP COLUMN embedding_text RESTRICT;


