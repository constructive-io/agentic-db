-- Deploy: schemas/agentic_db_app_public/tables/interactions/columns/id/alterations/alt0000001848
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/interactions/table
-- requires: schemas/agentic_db_app_public/tables/interactions/columns/id/column
-- requires: schemas/agentic_db_users_public/tables/users/policies/auth_del_admin_deletes/policy


ALTER TABLE "agentic_db_app_public".interactions 
  ALTER COLUMN id SET NOT NULL;

