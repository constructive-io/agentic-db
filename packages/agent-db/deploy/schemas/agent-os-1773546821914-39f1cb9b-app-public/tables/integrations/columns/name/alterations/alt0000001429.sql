-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/integrations/columns/name/alterations/alt0000001429
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/integrations/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/integrations/columns/name/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/integrations/columns/updated_at/alterations/alt0000001428


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".integrations 
  ALTER COLUMN name SET NOT NULL;

