-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/integrations/columns/id/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".integrations 
  DROP COLUMN id RESTRICT;


