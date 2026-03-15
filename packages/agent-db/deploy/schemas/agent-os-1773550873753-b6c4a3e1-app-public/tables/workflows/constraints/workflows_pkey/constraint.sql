-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/workflows/constraints/workflows_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/workflows/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/tools/columns/embedding/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".workflows 
  ADD CONSTRAINT workflows_pkey PRIMARY KEY (id);

