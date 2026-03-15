-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/integrations/columns/provider/alterations/alt0000001430
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/integrations/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/integrations/columns/provider/column
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/integrations/columns/name/alterations/alt0000001429


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".integrations 
  ALTER COLUMN provider SET NOT NULL;

