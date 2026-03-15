-- Revert: schemas/agent_db_app_public/tables/messages/constraints/messages_email_account_id_fkey/constraint


ALTER TABLE agent_db_app_public.messages 
  DROP CONSTRAINT messages_email_account_id_fkey;


