-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/files/columns/entity_id/alterations/alt0000002956


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".files 
  ALTER COLUMN entity_id DROP NOT NULL;


