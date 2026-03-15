-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/chat_messages/constraints/chat_messages_thread_id_fkey/constraint


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".chat_messages 
  DROP CONSTRAINT chat_messages_thread_id_fkey;


