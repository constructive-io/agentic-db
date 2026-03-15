-- Revert: schemas/agent_db_app_public/tables/messages/columns/thread_id/column


ALTER TABLE agent_db_app_public.messages 
  DROP COLUMN thread_id RESTRICT;


