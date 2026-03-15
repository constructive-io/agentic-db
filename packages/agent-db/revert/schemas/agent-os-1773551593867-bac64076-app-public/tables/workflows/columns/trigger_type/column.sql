-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/workflows/columns/trigger_type/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".workflows 
  DROP COLUMN trigger_type RESTRICT;


