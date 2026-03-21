-- Deploy: schemas/agentic_db_app_public/tables/milestones/columns/due_date/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/milestones/table
-- requires: schemas/agentic_db_app_public/tables/milestones/columns/name/alterations/alt0000004375


ALTER TABLE agentic_db_app_public.milestones 
  ADD COLUMN due_date timestamptz;

