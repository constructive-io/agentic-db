-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/rules/columns/is_active/alterations/alt0000001061
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/rules/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/rules/columns/severity/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/rules/columns/is_active/column



ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".rules 
    ALTER COLUMN is_active SET DEFAULT true;

