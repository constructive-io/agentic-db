-- Deploy: schemas/agent_db_app_public/tables/notes/columns/contact_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/notes/table
-- requires: schemas/agent_db_app_public/tables/venue_images/policies/auth_del_entity_membership/policy


ALTER TABLE agent_db_app_public.notes 
  ADD COLUMN contact_id uuid;

