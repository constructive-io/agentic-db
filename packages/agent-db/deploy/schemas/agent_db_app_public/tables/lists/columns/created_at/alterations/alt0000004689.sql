-- Deploy: schemas/agent_db_app_public/tables/lists/columns/created_at/alterations/alt0000004689
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/lists/table
-- requires: schemas/agent_db_app_public/tables/lists/columns/created_at/column
-- requires: schemas/agent_db_app_public/tables/lists/policies/auth_del_entity_membership/policy


ALTER TABLE "agent_db_app_public".lists 
  ALTER COLUMN created_at SET NOT NULL;

