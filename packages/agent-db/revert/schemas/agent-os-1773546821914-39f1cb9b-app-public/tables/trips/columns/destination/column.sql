-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/trips/columns/destination/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".trips 
  DROP COLUMN destination RESTRICT;


