-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/venues/columns/google_place_id/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".venues 
  DROP COLUMN google_place_id RESTRICT;


