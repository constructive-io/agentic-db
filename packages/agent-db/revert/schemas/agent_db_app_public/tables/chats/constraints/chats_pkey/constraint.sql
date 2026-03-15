-- Revert: schemas/agent_db_app_public/tables/chats/constraints/chats_pkey/constraint


ALTER TABLE agent_db_app_public.chats 
  DROP CONSTRAINT chats_pkey;


