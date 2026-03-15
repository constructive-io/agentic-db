-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/calendar_accounts/columns/id/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".calendar_accounts 
  DROP COLUMN id RESTRICT;


