-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/venue_images/columns/venue_id/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".venue_images 
  DROP COLUMN venue_id RESTRICT;


