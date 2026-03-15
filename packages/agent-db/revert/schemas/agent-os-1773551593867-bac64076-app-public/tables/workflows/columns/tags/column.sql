-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/workflows/columns/tags/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".workflows 
  DROP COLUMN tags RESTRICT;


