-- Deploy: schemas/agent_db_app_public/tables/milestones/columns/due_date/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/milestones/table
-- requires: schemas/agent_db_app_public/tables/milestones/columns/name/alterations/alt0000001327


ALTER TABLE agent_db_app_public.milestones 
  ADD COLUMN due_date timestamptz;

