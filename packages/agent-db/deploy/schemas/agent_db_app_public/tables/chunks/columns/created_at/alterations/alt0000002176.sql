-- Deploy: schemas/agent_db_app_public/tables/chunks/columns/created_at/alterations/alt0000002176
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/chunks/table
-- requires: schemas/agent_db_app_public/tables/chunks/columns/created_at/column
-- requires: schemas/agent_db_app_public/tables/chunks/policies/auth_del_entity_membership/policy



ALTER TABLE "agent_db_app_public".chunks 
    ALTER COLUMN created_at SET DEFAULT now();

