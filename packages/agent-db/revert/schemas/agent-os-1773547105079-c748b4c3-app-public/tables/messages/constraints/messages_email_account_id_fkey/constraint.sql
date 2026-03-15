-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/messages/constraints/messages_email_account_id_fkey/constraint


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".messages 
  DROP CONSTRAINT messages_email_account_id_fkey;


