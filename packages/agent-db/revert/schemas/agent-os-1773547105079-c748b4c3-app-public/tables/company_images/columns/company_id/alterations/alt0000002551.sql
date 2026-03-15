-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/company_images/columns/company_id/alterations/alt0000002551


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".company_images 
  ALTER COLUMN company_id DROP NOT NULL;


