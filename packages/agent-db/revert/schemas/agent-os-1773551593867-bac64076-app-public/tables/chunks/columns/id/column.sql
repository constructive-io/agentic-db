-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/chunks/columns/id/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".chunks 
  DROP COLUMN id RESTRICT;


