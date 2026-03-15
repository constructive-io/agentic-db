-- Deploy: schemas/agent_db_app_public/tables/prompts/columns/created_at/alterations/alt0000001101
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/prompts/table
-- requires: schemas/agent_db_app_public/tables/prompts/columns/created_at/column
-- requires: schemas/agent_db_app_public/tables/prompts/policies/auth_del_entity_membership/policy



ALTER TABLE agent_db_app_public.prompts 
    ALTER COLUMN created_at SET DEFAULT now();

