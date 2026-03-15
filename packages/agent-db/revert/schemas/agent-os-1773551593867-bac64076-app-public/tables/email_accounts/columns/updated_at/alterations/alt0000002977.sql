-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/email_accounts/columns/updated_at/alterations/alt0000002977


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".email_accounts 
  ALTER COLUMN updated_at DROP NOT NULL;


