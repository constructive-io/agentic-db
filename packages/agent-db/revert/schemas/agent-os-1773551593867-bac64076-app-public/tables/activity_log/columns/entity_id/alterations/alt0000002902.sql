-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/activity_log/columns/entity_id/alterations/alt0000002902


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".activity_log 
  ALTER COLUMN entity_id DROP NOT NULL;


