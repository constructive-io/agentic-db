-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/calendar_accounts/columns/id/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".calendar_accounts 
  DROP COLUMN id RESTRICT;


