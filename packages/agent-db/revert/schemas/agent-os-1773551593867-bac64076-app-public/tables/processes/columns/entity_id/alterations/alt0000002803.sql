-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/processes/columns/entity_id/alterations/alt0000002803


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".processes 
  ALTER COLUMN entity_id DROP NOT NULL;


