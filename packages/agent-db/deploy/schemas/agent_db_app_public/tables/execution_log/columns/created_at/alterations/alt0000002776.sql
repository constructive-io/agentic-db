-- Deploy: schemas/agent_db_app_public/tables/execution_log/columns/created_at/alterations/alt0000002776
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/execution_log/table
-- requires: schemas/agent_db_app_public/tables/execution_log/columns/created_at/column
-- requires: schemas/agent_db_app_public/tables/execution_log/policies/auth_del_entity_membership/policy


ALTER TABLE "agent_db_app_public".execution_log 
  ALTER COLUMN created_at SET NOT NULL;

