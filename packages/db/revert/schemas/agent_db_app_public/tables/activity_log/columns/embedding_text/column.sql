-- Revert: schemas/agent_db_app_public/tables/activity_log/columns/embedding_text/column


ALTER TABLE "agent_db_app_public".activity_log 
  DROP COLUMN embedding_text RESTRICT;


