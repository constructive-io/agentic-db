-- Deploy: schemas/agent_db_app_public/tables/sessions/columns/updated_at/alterations/alt0000001055
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/sessions/table
-- requires: schemas/agent_db_app_public/tables/sessions/columns/updated_at/column
-- requires: schemas/agent_db_app_public/tables/sessions/policies/auth_del_entity_membership/policy


ALTER TABLE agent_db_app_public.sessions 
  ALTER COLUMN updated_at SET NOT NULL;

