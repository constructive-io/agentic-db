-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/integrations/columns/provider/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/integrations/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/integrations/columns/name/alterations/alt0000001429


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".integrations 
  ADD COLUMN provider text;

