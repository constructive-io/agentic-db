-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/habits/columns/entity_id/alterations/alt0000003105


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".habits 
  ALTER COLUMN entity_id DROP NOT NULL;


