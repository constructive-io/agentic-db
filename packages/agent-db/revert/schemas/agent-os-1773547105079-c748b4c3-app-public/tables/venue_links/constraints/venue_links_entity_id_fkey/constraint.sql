-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/venue_links/constraints/venue_links_entity_id_fkey/constraint


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".venue_links 
  DROP CONSTRAINT venue_links_entity_id_fkey;


