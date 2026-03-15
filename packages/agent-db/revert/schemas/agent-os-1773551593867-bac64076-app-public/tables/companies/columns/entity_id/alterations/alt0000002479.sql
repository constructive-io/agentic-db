-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/companies/columns/entity_id/alterations/alt0000002479


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".companies 
  ALTER COLUMN entity_id DROP NOT NULL;


