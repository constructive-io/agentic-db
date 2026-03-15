-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/email_accounts/columns/updated_at/alterations/alt0000001368


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".email_accounts 
  ALTER COLUMN updated_at DROP NOT NULL;


