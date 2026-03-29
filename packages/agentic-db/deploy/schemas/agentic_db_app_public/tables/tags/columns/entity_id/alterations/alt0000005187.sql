-- Deploy: schemas/agentic_db_app_public/tables/tags/columns/entity_id/alterations/alt0000005187
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tags/table
-- requires: schemas/agentic_db_app_public/tables/tags/columns/entity_id/column
-- requires: schemas/agentic_db_users_public/tables/users/policies/auth_del_admin_deletes/policy


ALTER TABLE agentic_db_app_public.tags 
  ALTER COLUMN entity_id SET NOT NULL;

