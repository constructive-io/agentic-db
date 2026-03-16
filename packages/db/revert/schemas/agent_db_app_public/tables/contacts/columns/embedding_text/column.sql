-- Revert: schemas/agent_db_app_public/tables/contacts/columns/embedding_text/column


ALTER TABLE "agent_db_app_public".contacts 
  DROP COLUMN embedding_text RESTRICT;


