-- Deploy: schemas/agent_db_app_public/tables/projects/columns/created_at/alterations/alt0000002132
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/projects/table
-- requires: schemas/agent_db_app_public/tables/projects/columns/created_at/column
-- requires: schemas/agent_db_app_public/tables/projects/policies/auth_del_entity_membership/policy



ALTER TABLE "agent_db_app_public".projects 
    ALTER COLUMN created_at SET DEFAULT now();

