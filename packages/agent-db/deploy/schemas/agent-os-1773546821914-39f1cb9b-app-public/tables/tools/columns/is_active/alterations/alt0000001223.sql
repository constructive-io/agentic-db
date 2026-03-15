-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/tools/columns/is_active/alterations/alt0000001223
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/tools/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/tools/columns/is_active/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/tools/columns/auth_method/column



ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".tools 
    ALTER COLUMN is_active SET DEFAULT true;

