-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/messages/constraints/messages_email_account_id_fkey/constraint


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".messages 
  DROP CONSTRAINT messages_email_account_id_fkey;


