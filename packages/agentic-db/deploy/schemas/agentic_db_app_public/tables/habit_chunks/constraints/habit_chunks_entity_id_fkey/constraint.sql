-- Deploy: schemas/agentic_db_app_public/tables/habit_chunks/constraints/habit_chunks_entity_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_users_public/tables/users/table
-- requires: schemas/agentic_db_app_public/tables/habit_chunks/table
-- requires: schemas/agentic_db_app_public/tables/goal_chunks/triggers/goal_chunks_enqueue_embedding_update_tg


ALTER TABLE agentic_db_app_public.habit_chunks 
  ADD CONSTRAINT habit_chunks_entity_id_fkey 
    FOREIGN KEY(entity_id) 
    REFERENCES agentic_db_users_public.users (id) 
    ON DELETE CASCADE;

