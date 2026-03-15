-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/activity_log/columns/created_at/alterations/alt0000002903


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".activity_log 
  ALTER COLUMN created_at DROP NOT NULL;


