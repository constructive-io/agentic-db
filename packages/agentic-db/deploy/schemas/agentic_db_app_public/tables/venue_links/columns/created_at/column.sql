-- Deploy: schemas/agentic_db_app_public/tables/venue_links/columns/created_at/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/venue_links/table
-- requires: schemas/agentic_db_app_public/tables/venue_links/policies/auth_del_entity_membership/policy


ALTER TABLE agentic_db_app_public.venue_links 
  ADD COLUMN created_at timestamptz;

