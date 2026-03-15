-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/companies/columns/domain/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".companies 
  DROP COLUMN domain RESTRICT;


