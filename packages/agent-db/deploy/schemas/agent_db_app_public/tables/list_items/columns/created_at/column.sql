-- Deploy: schemas/agent_db_app_public/tables/list_items/columns/created_at/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/list_items/table
-- requires: schemas/agent_db_app_public/tables/list_items/policies/auth_del_entity_membership/policy


ALTER TABLE "agent_db_app_public".list_items 
  ADD COLUMN created_at timestamptz;

