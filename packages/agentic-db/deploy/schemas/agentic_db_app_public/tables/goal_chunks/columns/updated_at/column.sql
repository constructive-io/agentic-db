-- Deploy: schemas/agentic_db_app_public/tables/goal_chunks/columns/updated_at/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/goal_chunks/table
-- requires: schemas/agentic_db_app_public/tables/goal_chunks/policies/auth_del_entity_membership/policy


ALTER TABLE agentic_db_app_public.goal_chunks 
  ADD COLUMN updated_at timestamptz;

