-- Revert: schemas/agent-os-1773551593867-bac64076-status-public/tables/app_steps/columns/name/alterations/alt0000001777


ALTER TABLE "agent-os-1773551593867-bac64076-status-public".app_steps 
  ALTER COLUMN name DROP NOT NULL;


