-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/integrations/columns/name/alterations/alt0000003038
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/integrations/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/integrations/columns/name/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/integrations/columns/updated_at/alterations/alt0000003037


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".integrations 
  ALTER COLUMN name SET NOT NULL;

