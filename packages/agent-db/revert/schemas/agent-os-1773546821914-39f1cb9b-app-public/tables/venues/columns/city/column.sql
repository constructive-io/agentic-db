-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/venues/columns/city/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".venues 
  DROP COLUMN city RESTRICT;


