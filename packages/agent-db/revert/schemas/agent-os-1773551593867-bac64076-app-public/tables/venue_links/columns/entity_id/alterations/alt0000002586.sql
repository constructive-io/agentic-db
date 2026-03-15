-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/venue_links/columns/entity_id/alterations/alt0000002586


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".venue_links 
  ALTER COLUMN entity_id DROP NOT NULL;


