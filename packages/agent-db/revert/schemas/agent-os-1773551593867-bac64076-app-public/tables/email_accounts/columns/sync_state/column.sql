-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/email_accounts/columns/sync_state/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".email_accounts 
  DROP COLUMN sync_state RESTRICT;


