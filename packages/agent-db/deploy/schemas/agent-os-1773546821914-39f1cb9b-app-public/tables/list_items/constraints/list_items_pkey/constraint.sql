-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/list_items/constraints/list_items_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/list_items/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/lists/columns/embedding/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".list_items 
  ADD CONSTRAINT list_items_pkey PRIMARY KEY (id);

