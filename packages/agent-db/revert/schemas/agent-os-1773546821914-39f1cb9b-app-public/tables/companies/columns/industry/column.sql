-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/companies/columns/industry/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".companies 
  DROP COLUMN industry RESTRICT;


