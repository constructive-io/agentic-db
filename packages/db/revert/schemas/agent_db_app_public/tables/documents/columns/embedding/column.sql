-- Revert: schemas/agent_db_app_public/tables/documents/columns/embedding/column


ALTER TABLE "agent_db_app_public".documents 
  DROP COLUMN embedding RESTRICT;


