-- Deploy: schemas/agentic_db_app_public/tables/contact_memories/grants/authenticated/delete/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contact_memories/table
-- requires: schemas/agentic_db_app_public/tables/task_notes/policies/auth_del_entity_membership/policy


GRANT DELETE ON agentic_db_app_public.contact_memories TO authenticated;

