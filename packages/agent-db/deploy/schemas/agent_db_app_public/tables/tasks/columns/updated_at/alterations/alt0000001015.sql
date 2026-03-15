-- Deploy: schemas/agent_db_app_public/tables/tasks/columns/updated_at/alterations/alt0000001015
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/tasks/table
-- requires: schemas/agent_db_app_public/tables/tasks/columns/updated_at/column
-- requires: schemas/agent_db_app_public/tables/tasks/policies/auth_del_entity_membership/policy


ALTER TABLE agent_db_app_public.tasks 
  ALTER COLUMN updated_at SET NOT NULL;

