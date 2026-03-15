-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/contacts/columns/entity_id/alterations/alt0000000861


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".contacts 
  ALTER COLUMN entity_id DROP NOT NULL;


