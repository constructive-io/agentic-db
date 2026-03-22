-- Deploy: schemas/agentic_db_app_public/tables/contact_notes/grants/authenticated/insert/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contact_notes/table
-- requires: schemas/agentic_db_app_public/tables/goal_projects/policies/auth_del_entity_membership/policy


GRANT INSERT ON agentic_db_app_public.contact_notes TO authenticated;

