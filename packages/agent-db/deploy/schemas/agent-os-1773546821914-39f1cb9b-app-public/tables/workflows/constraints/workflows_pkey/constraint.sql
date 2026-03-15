-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/workflows/constraints/workflows_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/workflows/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/tools/columns/embedding/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".workflows 
  ADD CONSTRAINT workflows_pkey PRIMARY KEY (id);

