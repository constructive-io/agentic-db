-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/messages/constraints/messages_email_account_id_fkey/constraint


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".messages 
  DROP CONSTRAINT messages_email_account_id_fkey;


