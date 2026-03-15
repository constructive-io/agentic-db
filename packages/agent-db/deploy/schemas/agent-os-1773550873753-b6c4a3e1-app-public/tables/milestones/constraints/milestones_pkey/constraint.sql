-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/milestones/constraints/milestones_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/milestones/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/projects/columns/search_tsv/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".milestones 
  ADD CONSTRAINT milestones_pkey PRIMARY KEY (id);

