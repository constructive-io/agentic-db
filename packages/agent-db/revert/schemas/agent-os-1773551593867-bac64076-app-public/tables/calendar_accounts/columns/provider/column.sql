-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/calendar_accounts/columns/provider/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".calendar_accounts 
  DROP COLUMN provider RESTRICT;


