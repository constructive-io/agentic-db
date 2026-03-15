-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/tools/columns/entity_id/alterations/alt0000002826


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".tools 
  ALTER COLUMN entity_id DROP NOT NULL;


