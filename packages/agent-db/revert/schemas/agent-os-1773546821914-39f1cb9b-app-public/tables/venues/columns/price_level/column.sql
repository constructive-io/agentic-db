-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/venues/columns/price_level/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".venues 
  DROP COLUMN price_level RESTRICT;


