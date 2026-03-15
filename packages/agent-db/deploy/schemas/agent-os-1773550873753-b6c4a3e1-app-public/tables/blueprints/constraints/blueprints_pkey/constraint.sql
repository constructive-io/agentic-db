-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/blueprints/constraints/blueprints_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/blueprints/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/threads/columns/embedding/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".blueprints 
  ADD CONSTRAINT blueprints_pkey PRIMARY KEY (id);

