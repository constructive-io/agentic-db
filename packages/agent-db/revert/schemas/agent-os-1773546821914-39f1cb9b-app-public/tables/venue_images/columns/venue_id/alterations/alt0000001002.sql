-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/venue_images/columns/venue_id/alterations/alt0000001002


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".venue_images 
  ALTER COLUMN venue_id DROP NOT NULL;


