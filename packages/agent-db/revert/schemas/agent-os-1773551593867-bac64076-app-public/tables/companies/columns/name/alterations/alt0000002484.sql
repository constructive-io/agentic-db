-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/companies/columns/name/alterations/alt0000002484


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".companies 
  ALTER COLUMN name DROP NOT NULL;


