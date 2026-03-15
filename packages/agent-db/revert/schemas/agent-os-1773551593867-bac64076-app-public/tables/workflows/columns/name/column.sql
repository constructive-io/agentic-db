-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/workflows/columns/name/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".workflows 
  DROP COLUMN name RESTRICT;


