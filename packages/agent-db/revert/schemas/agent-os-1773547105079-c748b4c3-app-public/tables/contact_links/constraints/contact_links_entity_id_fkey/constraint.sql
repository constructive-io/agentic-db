-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/contact_links/constraints/contact_links_entity_id_fkey/constraint


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".contact_links 
  DROP CONSTRAINT contact_links_entity_id_fkey;


