-- Deploy: schemas/agentic_db_app_public/tables/interaction_chunks/constraints/interaction_chunks_interaction_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/interactions/table
-- requires: schemas/agentic_db_app_public/tables/interaction_chunks/table
-- requires: schemas/agentic_db_users_public/tables/users/policies/auth_del_admin_deletes/policy


ALTER TABLE "agentic_db_app_public".interaction_chunks 
  ADD CONSTRAINT interaction_chunks_interaction_id_fkey 
    FOREIGN KEY(interaction_id) 
    REFERENCES "agentic_db_app_public".interactions (id) 
    ON DELETE CASCADE;

