-- Deploy: schemas/agentic_db_app_public/tables/project_chunks/constraints/project_chunks_entity_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_users_public/tables/users/table
-- requires: schemas/agentic_db_app_public/tables/project_chunks/table
-- requires: schemas/agentic_db_app_public/tables/milestones/columns/status/alterations/alt0000004376


ALTER TABLE agentic_db_app_public.project_chunks 
  ADD CONSTRAINT project_chunks_entity_id_fkey 
    FOREIGN KEY(entity_id) 
    REFERENCES agentic_db_users_public.users (id) 
    ON DELETE CASCADE;

