-- Deploy: schemas/agent_db_app_public/tables/contacts/columns/updated_at/alterations/alt0000002568
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/contacts/table
-- requires: schemas/agent_db_app_public/tables/contacts/columns/updated_at/column
-- requires: schemas/agent_db_app_public/tables/contacts/policies/auth_del_entity_membership/policy


ALTER TABLE "agent_db_app_public".contacts 
  ALTER COLUMN updated_at SET NOT NULL;

