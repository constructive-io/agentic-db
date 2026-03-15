-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/milestones/constraints/milestones_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/milestones/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/projects/columns/search_tsv/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".milestones 
  ADD CONSTRAINT milestones_pkey PRIMARY KEY (id);

