-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/email_accounts/constraints/email_accounts_entity_id_fkey/constraint


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".email_accounts 
  DROP CONSTRAINT email_accounts_entity_id_fkey;


