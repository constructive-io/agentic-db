-- Deploy: schemas/agentic_db_app_public/tables/project_contacts/grants/authenticated/delete/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/project_contacts/table
-- requires: schemas/agentic_db_app_public/tables/milestones/constraints/milestones_project_id_fkey/constraint


GRANT DELETE ON "agentic_db_app_public".project_contacts TO authenticated;

