-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/ideas/columns/status/alterations/alt0000001482
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/ideas/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/ideas/columns/source/column
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/ideas/columns/status/column



ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".ideas 
    ALTER COLUMN status SET DEFAULT 'captured';

