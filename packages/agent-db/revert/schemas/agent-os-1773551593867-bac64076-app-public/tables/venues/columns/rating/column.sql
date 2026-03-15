-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/venues/columns/rating/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".venues 
  DROP COLUMN rating RESTRICT;


