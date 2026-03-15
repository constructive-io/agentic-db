-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/activity_log/columns/target_type/alterations/alt0000002909


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".activity_log 
  ALTER COLUMN target_type DROP NOT NULL;


