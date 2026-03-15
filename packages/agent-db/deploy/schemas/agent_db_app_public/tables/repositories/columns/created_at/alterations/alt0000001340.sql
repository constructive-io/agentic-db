-- Deploy: schemas/agent_db_app_public/tables/repositories/columns/created_at/alterations/alt0000001340
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/repositories/table
-- requires: schemas/agent_db_app_public/tables/repositories/columns/created_at/column
-- requires: schemas/agent_db_app_public/tables/repositories/policies/auth_del_entity_membership/policy



ALTER TABLE agent_db_app_public.repositories 
    ALTER COLUMN created_at SET DEFAULT now();

