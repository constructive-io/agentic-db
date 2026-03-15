-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/venue_links/columns/venue_id/alterations/alt0000001010


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".venue_links 
  ALTER COLUMN venue_id DROP NOT NULL;


