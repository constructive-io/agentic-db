-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/milestones/grants/authenticated/select/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/milestones/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/projects/columns/search_tsv/column


GRANT SELECT ON "agent-os-1773546821914-39f1cb9b-app-public".milestones TO authenticated;

