-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/workflow_steps/constraints/workflow_steps_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/workflow_steps/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/workflows/columns/tags/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".workflow_steps 
  ADD CONSTRAINT workflow_steps_pkey PRIMARY KEY (id);

