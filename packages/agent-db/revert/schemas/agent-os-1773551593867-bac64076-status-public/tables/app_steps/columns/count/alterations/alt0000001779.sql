-- Revert: schemas/agent-os-1773551593867-bac64076-status-public/tables/app_steps/columns/count/alterations/alt0000001779


ALTER TABLE "agent-os-1773551593867-bac64076-status-public".app_steps 
  ALTER COLUMN count DROP NOT NULL;


