-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/venue_links/columns/venue_id/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".venue_links 
  DROP COLUMN venue_id RESTRICT;


