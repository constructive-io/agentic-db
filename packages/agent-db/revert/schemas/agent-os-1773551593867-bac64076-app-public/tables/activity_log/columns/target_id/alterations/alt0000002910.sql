-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/activity_log/columns/target_id/alterations/alt0000002910


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".activity_log 
  ALTER COLUMN target_id DROP NOT NULL;


