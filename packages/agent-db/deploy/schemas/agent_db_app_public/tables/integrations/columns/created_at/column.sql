-- Deploy: schemas/agent_db_app_public/tables/integrations/columns/created_at/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/integrations/table
-- requires: schemas/agent_db_app_public/tables/integrations/policies/auth_del_entity_membership/policy


ALTER TABLE "agent_db_app_public".integrations 
  ADD COLUMN created_at timestamptz;

