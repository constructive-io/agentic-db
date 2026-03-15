-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/integrations/columns/entity_id/alterations/alt0000001424


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".integrations 
  ALTER COLUMN entity_id DROP NOT NULL;


