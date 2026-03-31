-- Deploy: schemas/agentic_db_app_public/tables/event_venues/columns/venue_id/alterations/alt0000001200
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/event_venues/table
-- requires: schemas/agentic_db_app_public/tables/event_venues/columns/venue_id/column
-- requires: schemas/agentic_db_users_public/tables/users/policies/auth_del_admin_deletes/policy


ALTER TABLE "agentic_db_app_public".event_venues 
  ALTER COLUMN venue_id SET NOT NULL;

