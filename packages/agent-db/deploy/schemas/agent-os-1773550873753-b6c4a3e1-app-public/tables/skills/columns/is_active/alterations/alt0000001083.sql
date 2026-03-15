-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/skills/columns/is_active/alterations/alt0000001083
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/skills/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/skills/columns/category/column
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/skills/columns/is_active/column



ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".skills 
    ALTER COLUMN is_active SET DEFAULT true;

