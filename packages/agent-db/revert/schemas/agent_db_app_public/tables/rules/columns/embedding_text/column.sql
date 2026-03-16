-- Revert: schemas/agent_db_app_public/tables/rules/columns/embedding_text/column


ALTER TABLE "agent_db_app_public".rules 
  DROP COLUMN embedding_text RESTRICT;


