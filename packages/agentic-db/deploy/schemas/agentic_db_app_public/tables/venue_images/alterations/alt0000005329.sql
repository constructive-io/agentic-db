-- Deploy: schemas/agentic_db_app_public/tables/venue_images/alterations/alt0000005329
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/venue_images/table
-- requires: schemas/agentic_db_users_public/tables/users/policies/auth_del_admin_deletes/policy


ALTER TABLE agentic_db_app_public.venue_images 
  DISABLE ROW LEVEL SECURITY;

