-- Deploy: schemas/agent_db_app_public/tables/repositories/alterations/alt0000001335
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/repositories/table
-- requires: schemas/agent_db_app_public/tables/project_contacts/policies/auth_del_entity_membership/policy


ALTER TABLE agent_db_app_public.repositories 
  DISABLE ROW LEVEL SECURITY;

