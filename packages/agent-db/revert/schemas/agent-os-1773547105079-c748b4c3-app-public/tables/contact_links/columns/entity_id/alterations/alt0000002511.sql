-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/contact_links/columns/entity_id/alterations/alt0000002511


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".contact_links 
  ALTER COLUMN entity_id DROP NOT NULL;


