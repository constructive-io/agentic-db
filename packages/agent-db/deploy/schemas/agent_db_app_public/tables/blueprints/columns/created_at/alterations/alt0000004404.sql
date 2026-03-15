-- Deploy: schemas/agent_db_app_public/tables/blueprints/columns/created_at/alterations/alt0000004404
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/blueprints/table
-- requires: schemas/agent_db_app_public/tables/blueprints/columns/created_at/column
-- requires: schemas/agent_db_app_public/tables/blueprints/policies/auth_del_entity_membership/policy


ALTER TABLE "agent_db_app_public".blueprints 
  ALTER COLUMN created_at SET NOT NULL;

