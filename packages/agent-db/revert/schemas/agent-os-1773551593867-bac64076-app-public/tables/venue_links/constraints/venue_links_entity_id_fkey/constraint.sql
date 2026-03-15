-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/venue_links/constraints/venue_links_entity_id_fkey/constraint


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".venue_links 
  DROP CONSTRAINT venue_links_entity_id_fkey;


