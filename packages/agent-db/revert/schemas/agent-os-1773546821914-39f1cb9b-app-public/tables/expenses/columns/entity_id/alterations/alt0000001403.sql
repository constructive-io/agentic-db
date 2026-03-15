-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/expenses/columns/entity_id/alterations/alt0000001403


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".expenses 
  ALTER COLUMN entity_id DROP NOT NULL;


