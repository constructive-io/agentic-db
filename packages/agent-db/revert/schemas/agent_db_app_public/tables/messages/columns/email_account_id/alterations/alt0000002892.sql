-- Revert: schemas/agent_db_app_public/tables/messages/columns/email_account_id/alterations/alt0000002892


ALTER TABLE "agent_db_app_public".messages 
  ALTER COLUMN email_account_id DROP NOT NULL;


