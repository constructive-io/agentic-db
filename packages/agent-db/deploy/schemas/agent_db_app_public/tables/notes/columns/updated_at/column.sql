-- Deploy: schemas/agent_db_app_public/tables/notes/columns/updated_at/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/notes/table
-- requires: schemas/agent_db_app_public/tables/notes/policies/auth_del_entity_membership/policy


ALTER TABLE "agent_db_app_public".notes 
  ADD COLUMN updated_at timestamptz;

