-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/venue_links/columns/updated_at/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".venue_links 
  DROP COLUMN updated_at RESTRICT;


