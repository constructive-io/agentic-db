-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/workflow_steps/constraints/workflow_steps_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/workflow_steps/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/workflows/columns/tags/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".workflow_steps 
  ADD CONSTRAINT workflow_steps_pkey PRIMARY KEY (id);

