-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/trips/columns/entity_id/alterations/alt0000003075


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".trips 
  ALTER COLUMN entity_id DROP NOT NULL;


