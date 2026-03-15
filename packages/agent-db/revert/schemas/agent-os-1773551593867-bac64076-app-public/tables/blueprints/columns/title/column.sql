-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/blueprints/columns/title/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".blueprints 
  DROP COLUMN title RESTRICT;


