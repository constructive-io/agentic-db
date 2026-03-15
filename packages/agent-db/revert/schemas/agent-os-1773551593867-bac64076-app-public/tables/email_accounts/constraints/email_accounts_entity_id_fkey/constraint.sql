-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/email_accounts/constraints/email_accounts_entity_id_fkey/constraint


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".email_accounts 
  DROP CONSTRAINT email_accounts_entity_id_fkey;


