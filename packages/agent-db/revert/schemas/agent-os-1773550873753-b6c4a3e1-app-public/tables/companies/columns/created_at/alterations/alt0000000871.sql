-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/companies/columns/created_at/alterations/alt0000000871


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".companies 
  ALTER COLUMN created_at DROP NOT NULL;


