-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/trips/columns/entity_id/alterations/alt0000001466


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".trips 
  ALTER COLUMN entity_id DROP NOT NULL;


