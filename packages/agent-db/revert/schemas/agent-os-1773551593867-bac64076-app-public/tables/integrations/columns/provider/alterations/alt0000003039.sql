-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/integrations/columns/provider/alterations/alt0000003039


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".integrations 
  ALTER COLUMN provider DROP NOT NULL;


