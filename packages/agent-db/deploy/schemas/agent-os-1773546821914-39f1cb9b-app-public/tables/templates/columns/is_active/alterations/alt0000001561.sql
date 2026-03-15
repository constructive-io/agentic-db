-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/templates/columns/is_active/alterations/alt0000001561
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/templates/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/templates/columns/is_active/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/templates/columns/variables/column



ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".templates 
    ALTER COLUMN is_active SET DEFAULT true;

