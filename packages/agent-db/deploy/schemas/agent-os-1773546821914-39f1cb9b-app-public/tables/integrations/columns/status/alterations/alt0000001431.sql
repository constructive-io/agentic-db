-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/integrations/columns/status/alterations/alt0000001431
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/integrations/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/integrations/columns/config/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/integrations/columns/status/column



ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".integrations 
    ALTER COLUMN status SET DEFAULT 'active';

