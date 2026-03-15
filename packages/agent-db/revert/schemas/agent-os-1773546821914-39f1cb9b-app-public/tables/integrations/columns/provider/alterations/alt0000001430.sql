-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/integrations/columns/provider/alterations/alt0000001430


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".integrations 
  ALTER COLUMN provider DROP NOT NULL;


