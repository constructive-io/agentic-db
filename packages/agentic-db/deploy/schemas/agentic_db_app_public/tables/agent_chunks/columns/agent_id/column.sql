-- Deploy: schemas/agentic_db_app_public/tables/agent_chunks/columns/agent_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_chunks/table
-- requires: schemas/agentic_db_app_public/tables/agent_tools/policies/auth_del_entity_membership/policy


ALTER TABLE agentic_db_app_public.agent_chunks 
  ADD COLUMN agent_id uuid;

