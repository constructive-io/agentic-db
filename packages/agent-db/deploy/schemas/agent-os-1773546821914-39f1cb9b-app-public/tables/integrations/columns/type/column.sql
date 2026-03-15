-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/integrations/columns/type/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/integrations/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/integrations/columns/provider/alterations/alt0000001430


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".integrations 
  ADD COLUMN type text;

