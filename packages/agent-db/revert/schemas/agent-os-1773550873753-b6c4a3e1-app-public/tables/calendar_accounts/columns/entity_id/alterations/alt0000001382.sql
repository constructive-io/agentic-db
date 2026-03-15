-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/calendar_accounts/columns/entity_id/alterations/alt0000001382


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".calendar_accounts 
  ALTER COLUMN entity_id DROP NOT NULL;


