-- Deploy: schemas/agentic_db_app_public/tables/interaction_chunks/constraints/interaction_chunks_entity_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_users_public/tables/users/table
-- requires: schemas/agentic_db_app_public/tables/interaction_chunks/table
-- requires: schemas/agentic_db_app_public/tables/note_chunks/triggers/note_chunks_enqueue_embedding_update_tg


ALTER TABLE agentic_db_app_public.interaction_chunks 
  ADD CONSTRAINT interaction_chunks_entity_id_fkey 
    FOREIGN KEY(entity_id) 
    REFERENCES agentic_db_users_public.users (id) 
    ON DELETE CASCADE;

