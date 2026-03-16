-- Deploy: schemas/agentic_db_app_public/tables/workflow_runs/columns/created_at/alterations/alt0000001231
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/workflow_runs/table
-- requires: schemas/agentic_db_app_public/tables/workflow_runs/columns/created_at/column
-- requires: schemas/agentic_db_app_public/tables/workflow_runs/policies/auth_del_entity_membership/policy



ALTER TABLE "agentic_db_app_public".workflow_runs 
    ALTER COLUMN created_at SET DEFAULT now();

