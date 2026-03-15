-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/trips/columns/entity_id/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".trips 
  DROP COLUMN entity_id RESTRICT;


