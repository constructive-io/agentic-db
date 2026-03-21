-- Deploy: schemas/agentic_db_app_public/tables/goal_chunks/columns/goal_id/alterations/alt0000004089
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/goal_chunks/table
-- requires: schemas/agentic_db_app_public/tables/goal_chunks/columns/goal_id/column
-- requires: schemas/agentic_db_app_public/tables/skill_chunks/indexes/skill_chunks_skill_id_idx


ALTER TABLE agentic_db_app_public.goal_chunks 
  ALTER COLUMN goal_id SET NOT NULL;

