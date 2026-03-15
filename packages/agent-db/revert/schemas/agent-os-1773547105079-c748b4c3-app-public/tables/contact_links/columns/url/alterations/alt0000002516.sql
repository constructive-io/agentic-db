-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/contact_links/columns/url/alterations/alt0000002516


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".contact_links 
  ALTER COLUMN url DROP NOT NULL;


