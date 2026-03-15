-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/contact_links/columns/id/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".contact_links 
  DROP COLUMN id RESTRICT;


