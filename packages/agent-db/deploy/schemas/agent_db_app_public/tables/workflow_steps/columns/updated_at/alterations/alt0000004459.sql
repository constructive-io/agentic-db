-- Deploy: schemas/agent_db_app_public/tables/workflow_steps/columns/updated_at/alterations/alt0000004459
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/workflow_steps/table
-- requires: schemas/agent_db_app_public/tables/workflow_steps/columns/updated_at/column
-- requires: schemas/agent_db_app_public/tables/workflow_steps/policies/auth_del_entity_membership/policy



ALTER TABLE "agent_db_app_public".workflow_steps 
    ALTER COLUMN updated_at SET DEFAULT now();

