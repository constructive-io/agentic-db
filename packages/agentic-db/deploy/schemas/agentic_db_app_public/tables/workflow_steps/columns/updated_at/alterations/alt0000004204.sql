-- Deploy: schemas/agentic_db_app_public/tables/workflow_steps/columns/updated_at/alterations/alt0000004204
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/workflow_steps/table
-- requires: schemas/agentic_db_app_public/tables/workflow_steps/columns/updated_at/column
-- requires: schemas/agentic_db_app_public/tables/workflow_steps/policies/auth_del_entity_membership/policy



ALTER TABLE agentic_db_app_public.workflow_steps 
    ALTER COLUMN updated_at SET DEFAULT now();

