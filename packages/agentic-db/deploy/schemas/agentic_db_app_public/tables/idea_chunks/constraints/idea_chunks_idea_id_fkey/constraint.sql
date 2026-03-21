-- Deploy: schemas/agentic_db_app_public/tables/idea_chunks/constraints/idea_chunks_idea_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/ideas/table
-- requires: schemas/agentic_db_app_public/tables/idea_chunks/table
-- requires: schemas/agentic_db_app_public/tables/habit_logs/indexes/habit_logs_habit_id_idx


ALTER TABLE "agentic_db_app_public".idea_chunks 
  ADD CONSTRAINT idea_chunks_idea_id_fkey 
    FOREIGN KEY(idea_id) 
    REFERENCES "agentic_db_app_public".ideas (id) 
    ON DELETE CASCADE;

