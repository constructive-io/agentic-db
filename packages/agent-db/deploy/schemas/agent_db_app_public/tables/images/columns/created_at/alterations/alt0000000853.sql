-- Deploy: schemas/agent_db_app_public/tables/images/columns/created_at/alterations/alt0000000853
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/images/table
-- requires: schemas/agent_db_app_public/tables/images/columns/created_at/column
-- requires: schemas/agent_db_app_public/tables/images/policies/auth_del_entity_membership/policy


ALTER TABLE agent_db_app_public.images 
  ALTER COLUMN created_at SET NOT NULL;

