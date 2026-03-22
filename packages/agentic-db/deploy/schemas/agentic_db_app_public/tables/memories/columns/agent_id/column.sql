-- Deploy: schemas/agentic_db_app_public/tables/memories/columns/agent_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/memories/table
-- requires: schemas/agentic_db_app_public/tables/company_memories/policies/auth_del_entity_membership/policy


ALTER TABLE "agentic_db_app_public".memories 
  ADD COLUMN agent_id uuid;

