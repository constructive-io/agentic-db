-- Deploy: schemas/agent_db_app_public/tables/rules/columns/created_at/alterations/alt0000001900
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/rules/table
-- requires: schemas/agent_db_app_public/tables/rules/columns/created_at/column
-- requires: schemas/agent_db_app_public/tables/rules/policies/auth_del_entity_membership/policy



ALTER TABLE "agent_db_app_public".rules 
    ALTER COLUMN created_at SET DEFAULT now();

