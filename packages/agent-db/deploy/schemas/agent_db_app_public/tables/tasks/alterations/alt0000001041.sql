-- Deploy: schemas/agent_db_app_public/tables/tasks/alterations/alt0000001041
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/tasks/table
-- requires: schemas/agent_db_app_public/tables/deal_contacts/policies/auth_del_entity_membership/policy


ALTER TABLE agent_db_app_public.tasks 
  DISABLE ROW LEVEL SECURITY;

