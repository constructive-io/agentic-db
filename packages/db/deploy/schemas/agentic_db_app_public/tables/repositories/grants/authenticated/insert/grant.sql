-- Deploy: schemas/agentic_db_app_public/tables/repositories/grants/authenticated/insert/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/repositories/table
-- requires: schemas/agentic_db_app_public/tables/project_contacts/policies/auth_del_entity_membership/policy


GRANT INSERT ON "agentic_db_app_public".repositories TO authenticated;

