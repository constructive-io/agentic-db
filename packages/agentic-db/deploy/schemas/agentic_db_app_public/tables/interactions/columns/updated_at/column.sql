-- Deploy: schemas/agentic_db_app_public/tables/interactions/columns/updated_at/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/interactions/table
-- requires: schemas/agentic_db_app_public/tables/interactions/policies/auth_del_entity_membership/policy


ALTER TABLE agentic_db_app_public.interactions 
  ADD COLUMN updated_at timestamptz;

