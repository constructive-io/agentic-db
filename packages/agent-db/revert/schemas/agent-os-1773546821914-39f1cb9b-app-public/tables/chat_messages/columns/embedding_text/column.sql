-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/chat_messages/columns/embedding_text/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".chat_messages 
  DROP COLUMN embedding_text RESTRICT;


