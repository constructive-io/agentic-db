-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/blueprints/columns/trigger_conditions/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".blueprints 
  DROP COLUMN trigger_conditions RESTRICT;


