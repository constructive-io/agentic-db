-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/expenses/columns/entity_id/alterations/alt0000003012


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".expenses 
  ALTER COLUMN entity_id DROP NOT NULL;


