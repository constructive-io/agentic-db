-- Deploy: schemas/agent_db_app_public/tables/tags/columns/updated_at/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/tags/table
-- requires: schemas/agent_db_app_public/tables/tags/policies/auth_del_entity_membership/policy


ALTER TABLE "agent_db_app_public".tags 
  ADD COLUMN updated_at timestamptz;

