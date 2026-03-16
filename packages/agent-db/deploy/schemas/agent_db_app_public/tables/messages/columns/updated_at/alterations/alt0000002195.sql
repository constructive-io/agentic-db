-- Deploy: schemas/agent_db_app_public/tables/messages/columns/updated_at/alterations/alt0000002195
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/messages/table
-- requires: schemas/agent_db_app_public/tables/messages/columns/updated_at/column
-- requires: schemas/agent_db_app_public/tables/messages/policies/auth_del_entity_membership/policy


ALTER TABLE "agent_db_app_public".messages 
  ALTER COLUMN updated_at SET NOT NULL;

