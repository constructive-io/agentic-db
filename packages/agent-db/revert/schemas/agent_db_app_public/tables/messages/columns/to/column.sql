-- Revert: schemas/agent_db_app_public/tables/messages/columns/to/column


ALTER TABLE "agent_db_app_public".messages 
  DROP COLUMN "to" RESTRICT;


