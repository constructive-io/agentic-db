-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/integrations/columns/name/alterations/alt0000003038


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".integrations 
  ALTER COLUMN name DROP NOT NULL;


