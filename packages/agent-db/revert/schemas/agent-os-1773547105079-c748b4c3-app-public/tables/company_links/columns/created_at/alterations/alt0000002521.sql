-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/company_links/columns/created_at/alterations/alt0000002521


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".company_links 
  ALTER COLUMN created_at DROP NOT NULL;


