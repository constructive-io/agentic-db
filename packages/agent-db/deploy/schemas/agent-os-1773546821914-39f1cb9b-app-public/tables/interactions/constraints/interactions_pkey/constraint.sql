-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/interactions/constraints/interactions_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/interactions/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/notes/columns/embedding/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".interactions 
  ADD CONSTRAINT interactions_pkey PRIMARY KEY (id);

