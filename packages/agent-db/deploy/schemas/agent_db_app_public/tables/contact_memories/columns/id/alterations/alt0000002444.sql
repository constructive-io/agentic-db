-- Deploy: schemas/agent_db_app_public/tables/contact_memories/columns/id/alterations/alt0000002444
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/contact_memories/table
-- requires: schemas/agent_db_app_public/tables/contact_memories/columns/id/column
-- requires: schemas/agent_db_app_public/tables/task_notes/policies/auth_del_entity_membership/policy



ALTER TABLE "agent_db_app_public".contact_memories 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

