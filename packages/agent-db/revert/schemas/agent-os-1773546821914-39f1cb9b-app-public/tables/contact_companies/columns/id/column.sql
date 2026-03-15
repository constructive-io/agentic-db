-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/contact_companies/columns/id/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".contact_companies 
  DROP COLUMN id RESTRICT;


