-- Deploy: schemas/agentic_db_app_public/tables/blueprints/constraints/blueprints_entity_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_users_public/tables/users/table
-- requires: schemas/agentic_db_app_public/tables/blueprints/table
-- requires: schemas/agentic_db_app_public/tables/threads/columns/embedding/column


ALTER TABLE "agentic_db_app_public".blueprints 
  ADD CONSTRAINT blueprints_entity_id_fkey 
    FOREIGN KEY(entity_id) 
    REFERENCES "agentic_db_users_public".users (id) 
    ON DELETE CASCADE;

