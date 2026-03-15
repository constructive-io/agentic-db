-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/companies/columns/domain/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".companies 
  DROP COLUMN domain RESTRICT;


