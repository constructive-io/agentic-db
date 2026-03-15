-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/venue_links/columns/venue_id/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".venue_links 
  DROP COLUMN venue_id RESTRICT;


