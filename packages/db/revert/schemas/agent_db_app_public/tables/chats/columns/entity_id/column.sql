-- Revert: schemas/agent_db_app_public/tables/chats/columns/entity_id/column


ALTER TABLE "agent_db_app_public".chats 
  DROP COLUMN entity_id RESTRICT;


