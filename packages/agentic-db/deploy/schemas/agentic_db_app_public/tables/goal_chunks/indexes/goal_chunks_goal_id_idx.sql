-- Deploy: schemas/agentic_db_app_public/tables/goal_chunks/indexes/goal_chunks_goal_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/goal_chunks/table
-- requires: schemas/agentic_db_app_public/tables/goal_chunks/columns/goal_id/column
-- requires: schemas/agentic_db_app_public/tables/skill_chunks/indexes/skill_chunks_skill_id_idx


CREATE INDEX goal_chunks_goal_id_idx ON agentic_db_app_public.goal_chunks USING BTREE ( goal_id );

