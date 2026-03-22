-- Deploy: schemas/agentic_db_app_public/tables/runtime_metrics/constraints/runtime_metrics_entity_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_users_public/tables/users/table
-- requires: schemas/agentic_db_app_public/tables/runtime_metrics/table
-- requires: schemas/agentic_db_app_public/tables/runtime_artifacts/columns/size_bytes/column


ALTER TABLE "agentic_db_app_public".runtime_metrics 
  ADD CONSTRAINT runtime_metrics_entity_id_fkey 
    FOREIGN KEY(entity_id) 
    REFERENCES "agentic_db_users_public".users (id) 
    ON DELETE CASCADE;

