-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/trips/columns/entity_id/alterations/alt0000001466


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".trips 
  ALTER COLUMN entity_id DROP NOT NULL;


