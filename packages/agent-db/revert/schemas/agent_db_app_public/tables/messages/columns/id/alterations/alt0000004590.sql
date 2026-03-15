-- Revert: schemas/agent_db_app_public/tables/messages/columns/id/alterations/alt0000004590


ALTER TABLE "agent_db_app_public".messages 
  ALTER COLUMN id DROP NOT NULL;


