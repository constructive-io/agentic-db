-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/company_links/columns/url/alterations/alt0000002525


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".company_links 
  ALTER COLUMN url DROP NOT NULL;


