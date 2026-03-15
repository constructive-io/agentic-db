-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/tags/constraints/tags_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/tags/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/interactions/columns/embedding/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".tags 
  ADD CONSTRAINT tags_pkey PRIMARY KEY (id);

