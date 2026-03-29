-- Deploy: schemas/agentic_db_app_public/tables/venue_links/constraints/venue_links_venue_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/venues/table
-- requires: schemas/agentic_db_app_public/tables/venue_links/table
-- requires: schemas/agentic_db_users_public/tables/users/policies/auth_del_admin_deletes/policy


ALTER TABLE agentic_db_app_public.venue_links 
  ADD CONSTRAINT venue_links_venue_id_fkey 
    FOREIGN KEY(venue_id) 
    REFERENCES agentic_db_app_public.venues (id) 
    ON DELETE CASCADE;

