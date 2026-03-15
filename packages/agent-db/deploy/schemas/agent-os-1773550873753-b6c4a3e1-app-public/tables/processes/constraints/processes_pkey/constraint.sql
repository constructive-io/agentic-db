-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/processes/constraints/processes_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/processes/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/blueprints/columns/embedding/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".processes 
  ADD CONSTRAINT processes_pkey PRIMARY KEY (id);

