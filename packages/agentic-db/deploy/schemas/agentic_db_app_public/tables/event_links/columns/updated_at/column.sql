-- Deploy: schemas/agentic_db_app_public/tables/event_links/columns/updated_at/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/event_links/table
-- requires: schemas/agentic_db_app_public/tables/event_links/policies/auth_del_entity_membership/policy


ALTER TABLE agentic_db_app_public.event_links 
  ADD COLUMN updated_at timestamptz;

