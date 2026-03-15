-- Revert: schemas/agent_db_app_public/tables/messages/constraints/messages_pkey/constraint


ALTER TABLE "agent_db_app_public".messages 
  DROP CONSTRAINT messages_pkey;


