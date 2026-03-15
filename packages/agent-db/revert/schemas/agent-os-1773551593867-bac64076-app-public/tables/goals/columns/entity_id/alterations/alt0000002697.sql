-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/goals/columns/entity_id/alterations/alt0000002697


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".goals 
  ALTER COLUMN entity_id DROP NOT NULL;


