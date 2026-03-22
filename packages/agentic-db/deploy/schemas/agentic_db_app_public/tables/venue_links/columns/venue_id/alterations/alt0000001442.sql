-- Deploy: schemas/agentic_db_app_public/tables/venue_links/columns/venue_id/alterations/alt0000001442
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/venue_links/table
-- requires: schemas/agentic_db_app_public/tables/venue_links/columns/venue_id/column
-- requires: schemas/agentic_db_users_public/tables/users/policies/auth_del_admin_deletes/policy


ALTER TABLE "agentic_db_app_public".venue_links 
  ALTER COLUMN venue_id SET NOT NULL;

