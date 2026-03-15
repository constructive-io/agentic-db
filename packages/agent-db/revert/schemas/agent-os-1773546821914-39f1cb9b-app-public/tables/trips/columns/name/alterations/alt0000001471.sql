-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/trips/columns/name/alterations/alt0000001471


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".trips 
  ALTER COLUMN name DROP NOT NULL;


