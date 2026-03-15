-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/venue_links/columns/venue_id/alterations/alt0000001010


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".venue_links 
  ALTER COLUMN venue_id DROP NOT NULL;


