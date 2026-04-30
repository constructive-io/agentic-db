-- Deploy: schemas/agentic_db_app_public/tables/goal_projects/policies/enable_row_level_security
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/goal_projects/table
-- requires: schemas/agentic_db_app_public/tables/documents/indexes/documents_file_path_idx


ALTER TABLE agentic_db_app_public.goal_projects 
  ENABLE ROW LEVEL SECURITY;

