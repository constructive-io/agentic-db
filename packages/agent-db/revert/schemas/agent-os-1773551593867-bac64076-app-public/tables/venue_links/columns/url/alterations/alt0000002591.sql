-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/venue_links/columns/url/alterations/alt0000002591


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".venue_links 
  ALTER COLUMN url DROP NOT NULL;


