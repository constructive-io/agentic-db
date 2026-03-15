-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/rules/constraints/rules_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/rules/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/tasks/columns/embedding/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".rules 
  ADD CONSTRAINT rules_pkey PRIMARY KEY (id);

