-- Deploy: schemas/agent_db_app_public/tables/threads/columns/updated_at/alterations/alt0000001178
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/threads/table
-- requires: schemas/agent_db_app_public/tables/threads/columns/updated_at/column
-- requires: schemas/agent_db_app_public/tables/threads/policies/auth_del_entity_membership/policy


ALTER TABLE agent_db_app_public.threads 
  ALTER COLUMN updated_at SET NOT NULL;

