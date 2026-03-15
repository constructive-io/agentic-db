-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/venue_links/constraints/venue_links_venue_id_fkey/constraint


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".venue_links 
  DROP CONSTRAINT venue_links_venue_id_fkey;


