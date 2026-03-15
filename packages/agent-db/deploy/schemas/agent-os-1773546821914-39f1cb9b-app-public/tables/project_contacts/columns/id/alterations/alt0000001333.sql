-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/project_contacts/columns/id/alterations/alt0000001333
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/project_contacts/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/project_contacts/columns/id/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/milestones/constraints/milestones_project_id_fkey/constraint



ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".project_contacts 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

