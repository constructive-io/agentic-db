-- Deploy: schemas/agent_db_app_public/tables/skills/columns/updated_at/alterations/alt0000001079
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/skills/table
-- requires: schemas/agent_db_app_public/tables/skills/columns/updated_at/column
-- requires: schemas/agent_db_app_public/tables/skills/policies/auth_del_entity_membership/policy


ALTER TABLE agent_db_app_public.skills 
  ALTER COLUMN updated_at SET NOT NULL;

