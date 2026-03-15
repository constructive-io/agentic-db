-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/chunks/constraints/chunks_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/chunks/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/files/columns/hash/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".chunks 
  ADD CONSTRAINT chunks_pkey PRIMARY KEY (id);

