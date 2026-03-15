-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/trips/columns/entity_id/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".trips 
  DROP COLUMN entity_id RESTRICT;


