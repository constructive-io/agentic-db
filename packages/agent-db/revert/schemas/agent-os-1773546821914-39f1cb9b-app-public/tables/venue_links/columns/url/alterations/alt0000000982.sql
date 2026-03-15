-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/venue_links/columns/url/alterations/alt0000000982


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".venue_links 
  ALTER COLUMN url DROP NOT NULL;


