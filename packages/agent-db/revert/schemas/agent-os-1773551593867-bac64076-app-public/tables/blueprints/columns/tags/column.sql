-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/blueprints/columns/tags/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".blueprints 
  DROP COLUMN tags RESTRICT;


