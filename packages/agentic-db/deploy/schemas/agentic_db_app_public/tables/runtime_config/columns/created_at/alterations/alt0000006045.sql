-- Deploy: schemas/agentic_db_app_public/tables/runtime_config/columns/created_at/alterations/alt0000006045
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_config/table
-- requires: schemas/agentic_db_app_public/tables/runtime_config/columns/created_at/column
-- requires: schemas/agentic_db_app_public/tables/runtime_config/policies/auth_del_entity_membership/policy



ALTER TABLE agentic_db_app_public.runtime_config 
    ALTER COLUMN created_at SET DEFAULT now();

