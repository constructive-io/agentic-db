-- Deploy: schemas/agent_db_app_public/tables/notes/columns/created_at/alterations/alt0000000909
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/notes/table
-- requires: schemas/agent_db_app_public/tables/notes/columns/created_at/column
-- requires: schemas/agent_db_app_public/tables/notes/policies/auth_del_entity_membership/policy


ALTER TABLE agent_db_app_public.notes 
  ALTER COLUMN created_at SET NOT NULL;

