-- Deploy: schemas/agentic_db_app_public/tables/goals/columns/id/alterations/alt0000001121
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/goals/table
-- requires: schemas/agentic_db_app_public/tables/goals/columns/id/column
-- requires: schemas/agentic_db_app_public/tables/projects/indexes/projects_priority_idx


ALTER TABLE agentic_db_app_public.goals 
  ALTER COLUMN id SET NOT NULL;

