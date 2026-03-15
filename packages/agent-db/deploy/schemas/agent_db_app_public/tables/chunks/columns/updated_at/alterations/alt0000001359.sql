-- Deploy: schemas/agent_db_app_public/tables/chunks/columns/updated_at/alterations/alt0000001359
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/chunks/table
-- requires: schemas/agent_db_app_public/tables/chunks/columns/updated_at/column
-- requires: schemas/agent_db_app_public/tables/chunks/policies/auth_del_entity_membership/policy


ALTER TABLE agent_db_app_public.chunks 
  ALTER COLUMN updated_at SET NOT NULL;

