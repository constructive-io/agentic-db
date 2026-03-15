-- Deploy: schemas/agent_db_app_public/tables/agent_skills/columns/entity_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/agent_skills/table
-- requires: schemas/agent_db_app_public/tables/expense_contacts/policies/auth_del_entity_membership/policy


ALTER TABLE agent_db_app_public.agent_skills 
  ADD COLUMN entity_id uuid;

