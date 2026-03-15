-- Deploy: schemas/agent_db_status_public/tables/org_achievements/columns/id/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_status_public/schema
-- requires: schemas/agent_db_status_public/tables/org_achievements/table


ALTER TABLE agent_db_status_public.org_achievements 
  ADD COLUMN id uuid;

