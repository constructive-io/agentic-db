-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/email_accounts/columns/id/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".email_accounts 
  DROP COLUMN id RESTRICT;


