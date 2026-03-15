-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/project_contacts/grants/authenticated/insert/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/project_contacts/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/milestones/constraints/milestones_project_id_fkey/constraint


GRANT INSERT ON "agent-os-1773550873753-b6c4a3e1-app-public".project_contacts TO authenticated;

