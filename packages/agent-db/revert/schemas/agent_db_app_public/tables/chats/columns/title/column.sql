-- Revert: schemas/agent_db_app_public/tables/chats/columns/title/column


ALTER TABLE agent_db_app_public.chats 
  DROP COLUMN title RESTRICT;


