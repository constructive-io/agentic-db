-- Deploy: schemas/agent_db_app_public/tables/processes/columns/updated_at/alterations/alt0000002030
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/processes/table
-- requires: schemas/agent_db_app_public/tables/processes/columns/updated_at/column
-- requires: schemas/agent_db_app_public/tables/processes/policies/auth_del_entity_membership/policy


ALTER TABLE "agent_db_app_public".processes 
  ALTER COLUMN updated_at SET NOT NULL;

