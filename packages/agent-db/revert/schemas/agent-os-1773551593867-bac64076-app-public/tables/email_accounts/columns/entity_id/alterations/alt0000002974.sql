-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/email_accounts/columns/entity_id/alterations/alt0000002974


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".email_accounts 
  ALTER COLUMN entity_id DROP NOT NULL;


