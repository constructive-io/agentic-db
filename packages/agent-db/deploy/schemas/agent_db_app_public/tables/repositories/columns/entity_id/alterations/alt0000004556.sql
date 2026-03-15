-- Deploy: schemas/agent_db_app_public/tables/repositories/columns/entity_id/alterations/alt0000004556
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/repositories/table
-- requires: schemas/agent_db_app_public/tables/repositories/columns/entity_id/column
-- requires: schemas/agent_db_app_public/tables/project_contacts/policies/auth_del_entity_membership/policy


ALTER TABLE "agent_db_app_public".repositories 
  ALTER COLUMN entity_id SET NOT NULL;

