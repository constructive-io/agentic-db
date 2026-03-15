-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/activity_log/columns/id/alterations/alt0000002900


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".activity_log 
  ALTER COLUMN id DROP NOT NULL;


