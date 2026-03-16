-- Deploy: schemas/agent_db_app_public/tables/project_contacts/grants/authenticated/select/grant
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/project_contacts/table
-- requires: schemas/agent_db_app_public/tables/milestones/constraints/milestones_project_id_fkey/constraint


GRANT SELECT ON "agent_db_app_public".project_contacts TO authenticated;

