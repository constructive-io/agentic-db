-- Revert: schemas/agent_db_app_public/tables/chats/columns/entity_id/alterations/alt0000004377


ALTER TABLE "agent_db_app_public".chats 
  ALTER COLUMN entity_id DROP NOT NULL;


