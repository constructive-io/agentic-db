-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-limits-public/tables/app_limits/columns/id/alterations/alt0000000048
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-limits-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-limits-public/tables/app_limits/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-limits-public/tables/app_limits/columns/id/column



ALTER TABLE "agent-os-1773550873753-b6c4a3e1-limits-public".app_limits 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

