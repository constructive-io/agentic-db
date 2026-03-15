-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/companies/constraints/companies_entity_id_fkey/constraint


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".companies 
  DROP CONSTRAINT companies_entity_id_fkey;


