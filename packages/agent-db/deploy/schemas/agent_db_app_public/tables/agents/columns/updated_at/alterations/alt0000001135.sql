-- Deploy: schemas/agent_db_app_public/tables/agents/columns/updated_at/alterations/alt0000001135
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/agents/table
-- requires: schemas/agent_db_app_public/tables/agents/columns/updated_at/column
-- requires: schemas/agent_db_app_public/tables/agents/policies/auth_del_entity_membership/policy



ALTER TABLE agent_db_app_public.agents 
    ALTER COLUMN updated_at SET DEFAULT now();

