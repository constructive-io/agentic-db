-- Deploy: schemas/agent_db_app_public/tables/notes/columns/updated_at/alterations/alt0000001765
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/notes/table
-- requires: schemas/agent_db_app_public/tables/notes/columns/updated_at/column
-- requires: schemas/agent_db_app_public/tables/notes/policies/auth_del_entity_membership/policy


ALTER TABLE "agent_db_app_public".notes 
  ALTER COLUMN updated_at SET NOT NULL;

