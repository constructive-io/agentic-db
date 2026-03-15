-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/integrations/columns/name/alterations/alt0000001429


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".integrations 
  ALTER COLUMN name DROP NOT NULL;


