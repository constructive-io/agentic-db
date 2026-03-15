-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/venue_images/columns/venue_id/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".venue_images 
  DROP COLUMN venue_id RESTRICT;


