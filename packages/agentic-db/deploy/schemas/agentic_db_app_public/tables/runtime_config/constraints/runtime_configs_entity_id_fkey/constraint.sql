-- Deploy: schemas/agentic_db_app_public/tables/runtime_config/constraints/runtime_configs_entity_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_users_public/tables/users/table
-- requires: schemas/agentic_db_app_public/tables/runtime_config/table
-- requires: schemas/agentic_db_app_public/tables/runtime_events/columns/status/alterations/alt0000001395


ALTER TABLE "agentic_db_app_public".runtime_config 
  ADD CONSTRAINT runtime_configs_entity_id_fkey 
    FOREIGN KEY(entity_id) 
    REFERENCES "agentic_db_users_public".users (id) 
    ON DELETE CASCADE;

