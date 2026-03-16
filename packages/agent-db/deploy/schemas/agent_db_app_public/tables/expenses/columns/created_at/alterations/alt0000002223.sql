-- Deploy: schemas/agent_db_app_public/tables/expenses/columns/created_at/alterations/alt0000002223
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/expenses/table
-- requires: schemas/agent_db_app_public/tables/expenses/columns/created_at/column
-- requires: schemas/agent_db_app_public/tables/expenses/policies/auth_del_entity_membership/policy



ALTER TABLE "agent_db_app_public".expenses 
    ALTER COLUMN created_at SET DEFAULT now();

