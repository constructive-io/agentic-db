-- Revert: schemas/agent_db_app_public/tables/chats/columns/started_at/column


ALTER TABLE agent_db_app_public.chats 
  DROP COLUMN started_at RESTRICT;


