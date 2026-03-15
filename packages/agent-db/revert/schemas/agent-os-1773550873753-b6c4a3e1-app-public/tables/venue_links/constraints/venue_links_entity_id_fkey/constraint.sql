-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/venue_links/constraints/venue_links_entity_id_fkey/constraint


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".venue_links 
  DROP CONSTRAINT venue_links_entity_id_fkey;


