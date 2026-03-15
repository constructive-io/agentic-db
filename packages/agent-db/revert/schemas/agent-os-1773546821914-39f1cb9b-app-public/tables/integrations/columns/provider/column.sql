-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/integrations/columns/provider/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".integrations 
  DROP COLUMN provider RESTRICT;


