-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/company_links/columns/company_id/alterations/alt0000002569


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".company_links 
  ALTER COLUMN company_id DROP NOT NULL;


