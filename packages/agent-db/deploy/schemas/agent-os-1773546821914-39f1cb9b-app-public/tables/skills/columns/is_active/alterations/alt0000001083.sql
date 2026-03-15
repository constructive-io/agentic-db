-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/skills/columns/is_active/alterations/alt0000001083
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/skills/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/skills/columns/category/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/skills/columns/is_active/column



ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".skills 
    ALTER COLUMN is_active SET DEFAULT true;

