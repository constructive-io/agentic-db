-- Revert: schemas/agent_db_app_public/tables/messages/columns/tags/column


ALTER TABLE "agent_db_app_public".messages 
  DROP COLUMN tags RESTRICT;


