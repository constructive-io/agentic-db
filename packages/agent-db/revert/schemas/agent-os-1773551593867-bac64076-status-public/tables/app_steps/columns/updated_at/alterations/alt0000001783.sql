-- Revert: schemas/agent-os-1773551593867-bac64076-status-public/tables/app_steps/columns/updated_at/alterations/alt0000001783


ALTER TABLE "agent-os-1773551593867-bac64076-status-public".app_steps 
  ALTER COLUMN updated_at DROP DEFAULT;


