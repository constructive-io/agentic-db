-- Revert: schemas/agent_db_app_public/tables/chat_messages/columns/role/column


ALTER TABLE "agent_db_app_public".chat_messages 
  DROP COLUMN role RESTRICT;


