-- Deploy: schemas/agent_db_app_public/tables/webhooks/columns/updated_at/alterations/alt0000001438
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/webhooks/table
-- requires: schemas/agent_db_app_public/tables/webhooks/columns/updated_at/column
-- requires: schemas/agent_db_app_public/tables/webhooks/policies/auth_del_entity_membership/policy


ALTER TABLE agent_db_app_public.webhooks 
  ALTER COLUMN updated_at SET NOT NULL;

