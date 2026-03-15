-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/email_accounts/columns/entity_id/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".email_accounts 
  DROP COLUMN entity_id RESTRICT;


