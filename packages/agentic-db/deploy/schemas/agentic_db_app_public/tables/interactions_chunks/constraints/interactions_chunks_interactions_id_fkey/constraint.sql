-- Deploy: schemas/agentic_db_app_public/tables/interactions_chunks/constraints/interactions_chunks_interactions_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/interactions/table
-- requires: schemas/agentic_db_app_public/tables/interactions_chunks/table


ALTER TABLE "agentic_db_app_public".interactions_chunks 
  ADD CONSTRAINT interactions_chunks_interactions_id_fkey 
    FOREIGN KEY(interactions_id) 
    REFERENCES "agentic_db_app_public".interactions (id) 
    ON DELETE CASCADE;

