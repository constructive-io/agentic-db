-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/integrations/columns/name/alterations/alt0000001429


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".integrations 
  ALTER COLUMN name DROP NOT NULL;


