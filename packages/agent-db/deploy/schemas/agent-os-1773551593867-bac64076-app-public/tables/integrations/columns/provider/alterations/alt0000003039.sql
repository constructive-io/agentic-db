-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/integrations/columns/provider/alterations/alt0000003039
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/integrations/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/integrations/columns/provider/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/integrations/columns/name/alterations/alt0000003038


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".integrations 
  ALTER COLUMN provider SET NOT NULL;

