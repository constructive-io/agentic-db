-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/deal_contacts/columns/deal_id/alterations/alt0000001036


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".deal_contacts 
  ALTER COLUMN deal_id DROP NOT NULL;


