-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/integrations/columns/id/alterations/alt0000001422


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".integrations 
  ALTER COLUMN id DROP NOT NULL;


