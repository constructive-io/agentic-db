-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/venue_links/columns/updated_at/alterations/alt0000002589


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".venue_links 
  ALTER COLUMN updated_at DROP NOT NULL;


