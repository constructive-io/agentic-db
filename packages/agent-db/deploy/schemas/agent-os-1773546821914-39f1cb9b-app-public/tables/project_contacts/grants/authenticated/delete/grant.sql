-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/project_contacts/grants/authenticated/delete/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/project_contacts/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/milestones/constraints/milestones_project_id_fkey/constraint


GRANT DELETE ON "agent-os-1773546821914-39f1cb9b-app-public".project_contacts TO authenticated;

