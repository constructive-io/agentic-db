-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/messages/columns/email_account_id/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".messages 
  DROP COLUMN email_account_id RESTRICT;


