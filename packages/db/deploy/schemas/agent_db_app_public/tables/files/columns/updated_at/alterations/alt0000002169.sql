-- Deploy: schemas/agent_db_app_public/tables/files/columns/updated_at/alterations/alt0000002169
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/files/table
-- requires: schemas/agent_db_app_public/tables/files/columns/updated_at/column
-- requires: schemas/agent_db_app_public/tables/files/policies/auth_del_entity_membership/policy



ALTER TABLE "agent_db_app_public".files 
    ALTER COLUMN updated_at SET DEFAULT now();

