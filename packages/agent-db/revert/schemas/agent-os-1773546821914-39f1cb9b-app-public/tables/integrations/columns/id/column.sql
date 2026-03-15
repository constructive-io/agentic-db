-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/integrations/columns/id/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".integrations 
  DROP COLUMN id RESTRICT;


