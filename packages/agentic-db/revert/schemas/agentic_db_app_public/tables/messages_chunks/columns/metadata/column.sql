-- Revert: schemas/agentic_db_app_public/tables/messages_chunks/columns/metadata/column


ALTER TABLE "agentic_db_app_public".messages_chunks 
  DROP COLUMN metadata RESTRICT;


