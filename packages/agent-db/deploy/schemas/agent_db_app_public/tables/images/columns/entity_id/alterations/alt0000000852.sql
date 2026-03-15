-- Deploy: schemas/agent_db_app_public/tables/images/columns/entity_id/alterations/alt0000000852
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/images/table
-- requires: schemas/agent_db_app_public/tables/images/columns/entity_id/column
-- requires: schemas/agent_db_users_public/tables/users/policies/auth_del_admin_deletes/policy


ALTER TABLE agent_db_app_public.images 
  ALTER COLUMN entity_id SET NOT NULL;

