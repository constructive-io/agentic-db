-- Deploy: schemas/agent_db_app_public/tables/company_memories/columns/id/alterations/alt0000002449
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/company_memories/table
-- requires: schemas/agent_db_app_public/tables/company_memories/columns/id/column
-- requires: schemas/agent_db_app_public/tables/contact_memories/policies/auth_del_entity_membership/policy


ALTER TABLE "agent_db_app_public".company_memories 
  ALTER COLUMN id SET NOT NULL;

