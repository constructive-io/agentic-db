-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/files/constraints/files_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/files/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/repositories/columns/embedding/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".files 
  ADD CONSTRAINT files_pkey PRIMARY KEY (id);

