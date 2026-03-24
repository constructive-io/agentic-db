-- Deploy: schemas/agentic_db_app_public/tables/task_contacts/grants/authenticated/delete/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/task_contacts/table
-- requires: schemas/agentic_db_app_public/tables/project_contacts/policies/auth_del_entity_membership/policy


GRANT DELETE ON "agentic_db_app_public".task_contacts TO authenticated;

