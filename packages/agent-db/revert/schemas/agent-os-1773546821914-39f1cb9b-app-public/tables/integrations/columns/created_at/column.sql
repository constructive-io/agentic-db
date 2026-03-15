-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/integrations/columns/created_at/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".integrations 
  DROP COLUMN created_at RESTRICT;


