-- Deploy: schemas/agent_db_app_public/tables/habits/columns/created_at/alterations/alt0000002315
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/habits/table
-- requires: schemas/agent_db_app_public/tables/habits/columns/created_at/column
-- requires: schemas/agent_db_app_public/tables/habits/policies/auth_del_entity_membership/policy


ALTER TABLE "agent_db_app_public".habits 
  ALTER COLUMN created_at SET NOT NULL;

