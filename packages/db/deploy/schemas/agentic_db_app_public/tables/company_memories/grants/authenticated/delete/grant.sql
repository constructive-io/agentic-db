-- Deploy: schemas/agentic_db_app_public/tables/company_memories/grants/authenticated/delete/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/company_memories/table
-- requires: schemas/agentic_db_app_public/tables/contact_memories/policies/auth_del_entity_membership/policy


GRANT DELETE ON "agentic_db_app_public".company_memories TO authenticated;

