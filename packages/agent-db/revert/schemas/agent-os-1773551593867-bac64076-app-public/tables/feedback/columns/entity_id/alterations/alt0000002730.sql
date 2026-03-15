-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/feedback/columns/entity_id/alterations/alt0000002730


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".feedback 
  ALTER COLUMN entity_id DROP NOT NULL;


