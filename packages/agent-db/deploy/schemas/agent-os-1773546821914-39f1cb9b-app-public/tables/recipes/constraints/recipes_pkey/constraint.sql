-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/recipes/constraints/recipes_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/recipes/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/notifications/columns/source_entity_type/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".recipes 
  ADD CONSTRAINT recipes_pkey PRIMARY KEY (id);

