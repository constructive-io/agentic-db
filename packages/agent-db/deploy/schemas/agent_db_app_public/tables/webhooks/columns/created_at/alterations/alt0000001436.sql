-- Deploy: schemas/agent_db_app_public/tables/webhooks/columns/created_at/alterations/alt0000001436
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/webhooks/table
-- requires: schemas/agent_db_app_public/tables/webhooks/columns/created_at/column
-- requires: schemas/agent_db_app_public/tables/webhooks/policies/auth_del_entity_membership/policy


ALTER TABLE agent_db_app_public.webhooks 
  ALTER COLUMN created_at SET NOT NULL;

