-- Deploy: schemas/agentic_db_app_public/tables/tasks/columns/id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tasks/table
-- requires: schemas/agentic_db_app_public/tables/venues/triggers/venues_search_tsv_tsv_update_tg


ALTER TABLE agentic_db_app_public.tasks 
  ADD COLUMN id uuid;

