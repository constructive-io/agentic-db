-- Deploy: schemas/agent_db_app_public/tables/company_events/alterations/alt0000000987
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/company_events/table
-- requires: schemas/agent_db_app_public/tables/contact_events/policies/auth_del_entity_membership/policy


ALTER TABLE agent_db_app_public.company_events 
  DISABLE ROW LEVEL SECURITY;

