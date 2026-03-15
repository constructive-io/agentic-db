-- Deploy: schemas/agent_db_app_public/tables/recipes/columns/updated_at/alterations/alt0000001549
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/recipes/table
-- requires: schemas/agent_db_app_public/tables/recipes/columns/updated_at/column
-- requires: schemas/agent_db_app_public/tables/recipes/policies/auth_del_entity_membership/policy



ALTER TABLE agent_db_app_public.recipes 
    ALTER COLUMN updated_at SET DEFAULT now();

