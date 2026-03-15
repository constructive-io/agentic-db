-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/contact_companies/columns/entity_id/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".contact_companies 
  DROP COLUMN entity_id RESTRICT;


