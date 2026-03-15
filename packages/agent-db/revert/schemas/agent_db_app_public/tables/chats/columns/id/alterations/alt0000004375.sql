-- Revert: schemas/agent_db_app_public/tables/chats/columns/id/alterations/alt0000004375


ALTER TABLE "agent_db_app_public".chats 
  ALTER COLUMN id DROP NOT NULL;


