-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/skills/columns/always_load/alterations/alt0000001082
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/skills/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/skills/columns/always_load/column
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/skills/columns/prerequisites/column



ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".skills 
    ALTER COLUMN always_load SET DEFAULT false;

