-- Revert: schemas/agent_db_app_public/tables/chats/columns/id/column


ALTER TABLE "agent_db_app_public".chats 
  DROP COLUMN id RESTRICT;


