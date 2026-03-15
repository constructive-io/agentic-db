-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/deal_contacts/columns/entity_id/alterations/alt0000001040


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".deal_contacts 
  ALTER COLUMN entity_id DROP NOT NULL;


