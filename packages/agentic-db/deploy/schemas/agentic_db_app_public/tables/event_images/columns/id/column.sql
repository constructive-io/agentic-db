-- Deploy: schemas/agentic_db_app_public/tables/event_images/columns/id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/event_images/table
-- requires: schemas/agentic_db_app_public/tables/company_images/policies/auth_del_entity_membership/policy


ALTER TABLE agentic_db_app_public.event_images 
  ADD COLUMN id uuid;

