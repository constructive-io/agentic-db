-- Deploy: schemas/agent_db_app_public/tables/agent_spawns/columns/created_at/alterations/alt0000004477
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/agent_spawns/table
-- requires: schemas/agent_db_app_public/tables/agent_spawns/columns/created_at/column
-- requires: schemas/agent_db_app_public/tables/agent_spawns/policies/auth_del_entity_membership/policy


ALTER TABLE "agent_db_app_public".agent_spawns 
  ALTER COLUMN created_at SET NOT NULL;

