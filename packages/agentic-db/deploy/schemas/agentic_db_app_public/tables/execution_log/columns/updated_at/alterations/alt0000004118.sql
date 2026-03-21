-- Deploy: schemas/agentic_db_app_public/tables/execution_log/columns/updated_at/alterations/alt0000004118
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/execution_log/table
-- requires: schemas/agentic_db_app_public/tables/execution_log/columns/updated_at/column
-- requires: schemas/agentic_db_app_public/tables/execution_log/policies/auth_del_entity_membership/policy



ALTER TABLE agentic_db_app_public.execution_log 
    ALTER COLUMN updated_at SET DEFAULT now();

