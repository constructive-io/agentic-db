-- Revert: schemas/agent_db_app_public/tables/messages/columns/received_at/column


ALTER TABLE "agent_db_app_public".messages 
  DROP COLUMN received_at RESTRICT;


