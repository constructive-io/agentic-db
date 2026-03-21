-- Deploy: schemas/agentic_db_app_public/tables/workflow_steps/constraints/workflow_steps_entity_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_users_public/tables/users/table
-- requires: schemas/agentic_db_app_public/tables/workflow_steps/table
-- requires: schemas/agentic_db_app_public/tables/workflows/columns/tags/column


ALTER TABLE "agentic_db_app_public".workflow_steps 
  ADD CONSTRAINT workflow_steps_entity_id_fkey 
    FOREIGN KEY(entity_id) 
    REFERENCES "agentic_db_users_public".users (id) 
    ON DELETE CASCADE;

