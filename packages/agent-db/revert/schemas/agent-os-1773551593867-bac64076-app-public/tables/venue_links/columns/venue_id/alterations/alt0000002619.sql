-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/venue_links/columns/venue_id/alterations/alt0000002619


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".venue_links 
  ALTER COLUMN venue_id DROP NOT NULL;


