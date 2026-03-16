-- Revert: schemas/agent_db_app_public/tables/messages/columns/remote_id/column


ALTER TABLE "agent_db_app_public".messages 
  DROP COLUMN remote_id RESTRICT;


