-- Deploy: schemas/agentic_db_app_public/tables/venues_chunks/columns/venues_id/alterations/alt0000002689
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/venues_chunks/table
-- requires: schemas/agentic_db_app_public/tables/venues_chunks/columns/venues_id/column
-- requires: schemas/agentic_db_users_public/tables/users/policies/auth_del_admin_deletes/policy


ALTER TABLE agentic_db_app_public.venues_chunks 
  ALTER COLUMN venues_id SET NOT NULL;

