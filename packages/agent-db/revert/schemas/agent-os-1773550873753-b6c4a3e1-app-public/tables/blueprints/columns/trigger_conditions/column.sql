-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/blueprints/columns/trigger_conditions/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".blueprints 
  DROP COLUMN trigger_conditions RESTRICT;


