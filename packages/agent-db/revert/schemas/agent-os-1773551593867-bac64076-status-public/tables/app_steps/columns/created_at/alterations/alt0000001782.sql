-- Revert: schemas/agent-os-1773551593867-bac64076-status-public/tables/app_steps/columns/created_at/alterations/alt0000001782


ALTER TABLE "agent-os-1773551593867-bac64076-status-public".app_steps 
  ALTER COLUMN created_at DROP DEFAULT;


