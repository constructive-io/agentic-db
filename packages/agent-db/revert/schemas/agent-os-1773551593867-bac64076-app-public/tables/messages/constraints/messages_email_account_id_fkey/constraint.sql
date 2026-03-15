-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/messages/constraints/messages_email_account_id_fkey/constraint


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".messages 
  DROP CONSTRAINT messages_email_account_id_fkey;


