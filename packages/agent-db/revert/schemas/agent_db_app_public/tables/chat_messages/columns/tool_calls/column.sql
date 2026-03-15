-- Revert: schemas/agent_db_app_public/tables/chat_messages/columns/tool_calls/column


ALTER TABLE agent_db_app_public.chat_messages 
  DROP COLUMN tool_calls RESTRICT;


