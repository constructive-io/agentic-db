-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/milestones/policies/enable_row_level_security
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/milestones/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/projects/columns/search_tsv/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".milestones 
  ENABLE ROW LEVEL SECURITY;

