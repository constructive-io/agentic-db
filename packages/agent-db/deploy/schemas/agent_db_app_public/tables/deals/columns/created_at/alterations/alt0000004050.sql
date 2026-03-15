-- Deploy: schemas/agent_db_app_public/tables/deals/columns/created_at/alterations/alt0000004050
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/deals/table
-- requires: schemas/agent_db_app_public/tables/deals/columns/created_at/column
-- requires: schemas/agent_db_app_public/tables/deals/policies/auth_del_entity_membership/policy


ALTER TABLE "agent_db_app_public".deals 
  ALTER COLUMN created_at SET NOT NULL;

