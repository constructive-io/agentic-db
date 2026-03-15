-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/milestones/columns/entity_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/milestones/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/projects/columns/search_tsv/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".milestones 
  ADD COLUMN entity_id uuid;

