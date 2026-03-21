-- Deploy: schemas/agentic_db_app_public/tables/blueprint_chunks/constraints/blueprint_chunks_blueprint_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/blueprints/table
-- requires: schemas/agentic_db_app_public/tables/blueprint_chunks/table
-- requires: schemas/agentic_db_app_public/tables/thread_chunks/indexes/thread_chunks_thread_id_idx


ALTER TABLE agentic_db_app_public.blueprint_chunks 
  ADD CONSTRAINT blueprint_chunks_blueprint_id_fkey 
    FOREIGN KEY(blueprint_id) 
    REFERENCES agentic_db_app_public.blueprints (id) 
    ON DELETE CASCADE;

