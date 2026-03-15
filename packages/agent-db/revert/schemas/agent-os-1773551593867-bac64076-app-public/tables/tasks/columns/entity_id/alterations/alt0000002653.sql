-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/tasks/columns/entity_id/alterations/alt0000002653


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".tasks 
  ALTER COLUMN entity_id DROP NOT NULL;


