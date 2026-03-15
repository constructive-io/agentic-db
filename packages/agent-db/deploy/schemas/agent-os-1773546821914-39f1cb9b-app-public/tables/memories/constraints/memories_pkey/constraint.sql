-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/memories/constraints/memories_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/memories/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/rules/columns/trigger_concept/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".memories 
  ADD CONSTRAINT memories_pkey PRIMARY KEY (id);

