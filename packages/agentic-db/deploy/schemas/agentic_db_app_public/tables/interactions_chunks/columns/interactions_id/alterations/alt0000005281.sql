-- Deploy: schemas/agentic_db_app_public/tables/interactions_chunks/columns/interactions_id/alterations/alt0000005281
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/interactions_chunks/table
-- requires: schemas/agentic_db_users_public/tables/users/policies/auth_del_admin_deletes/policy
-- requires: schemas/agentic_db_app_public/tables/interactions_chunks/columns/interactions_id/column


ALTER TABLE agentic_db_app_public.interactions_chunks 
  ALTER COLUMN interactions_id SET NOT NULL;

