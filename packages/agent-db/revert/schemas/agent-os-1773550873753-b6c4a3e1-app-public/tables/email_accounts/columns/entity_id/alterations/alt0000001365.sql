-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/email_accounts/columns/entity_id/alterations/alt0000001365


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".email_accounts 
  ALTER COLUMN entity_id DROP NOT NULL;


