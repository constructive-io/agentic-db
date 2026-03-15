-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/feedback/columns/target_id/alterations/alt0000002736


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".feedback 
  ALTER COLUMN target_id DROP NOT NULL;


