-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/templates/constraints/templates_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/templates/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/recipes/columns/embedding/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".templates 
  ADD CONSTRAINT templates_pkey PRIMARY KEY (id);

