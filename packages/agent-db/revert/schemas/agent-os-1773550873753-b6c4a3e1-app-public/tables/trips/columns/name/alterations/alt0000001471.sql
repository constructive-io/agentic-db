-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/trips/columns/name/alterations/alt0000001471


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".trips 
  ALTER COLUMN name DROP NOT NULL;


