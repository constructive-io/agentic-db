-- Deploy: schemas/agentic_db_app_public/tables/habits/constraints/habits_entity_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/habits/table
-- requires: schemas/agentic_db_users_public/tables/users/table
-- requires: schemas/agentic_db_app_public/tables/goals/triggers/goals_enqueue_embedding_update_tg


ALTER TABLE "agentic_db_app_public".habits 
  ADD CONSTRAINT habits_entity_id_fkey 
    FOREIGN KEY(entity_id) 
    REFERENCES "agentic_db_users_public".users (id) 
    ON DELETE CASCADE;

