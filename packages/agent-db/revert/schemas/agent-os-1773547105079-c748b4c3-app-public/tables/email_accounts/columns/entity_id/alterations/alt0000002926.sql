-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/email_accounts/columns/entity_id/alterations/alt0000002926


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".email_accounts 
  ALTER COLUMN entity_id DROP NOT NULL;


