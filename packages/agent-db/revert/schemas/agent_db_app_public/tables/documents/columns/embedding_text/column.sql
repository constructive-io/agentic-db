-- Revert: schemas/agent_db_app_public/tables/documents/columns/embedding_text/column


ALTER TABLE "agent_db_app_public".documents 
  DROP COLUMN embedding_text RESTRICT;


