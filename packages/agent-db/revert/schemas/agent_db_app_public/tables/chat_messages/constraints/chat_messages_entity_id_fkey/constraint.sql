-- Revert: schemas/agent_db_app_public/tables/chat_messages/constraints/chat_messages_entity_id_fkey/constraint


ALTER TABLE agent_db_app_public.chat_messages 
  DROP CONSTRAINT chat_messages_entity_id_fkey;


