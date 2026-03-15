-- Revert: schemas/agent_db_app_public/tables/chats/columns/updated_at/column


ALTER TABLE agent_db_app_public.chats 
  DROP COLUMN updated_at RESTRICT;


