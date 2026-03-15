-- Deploy: schemas/agent_db_app_public/tables/venues/columns/updated_at/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/venues/table
-- requires: schemas/agent_db_app_public/tables/venues/policies/auth_del_entity_membership/policy


ALTER TABLE agent_db_app_public.venues 
  ADD COLUMN updated_at timestamptz;

