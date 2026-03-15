-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/venue_links/columns/created_at/alterations/alt0000000978


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".venue_links 
  ALTER COLUMN created_at DROP NOT NULL;


