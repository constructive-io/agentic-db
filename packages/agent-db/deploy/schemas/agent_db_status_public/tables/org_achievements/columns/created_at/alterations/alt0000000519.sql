-- Deploy: schemas/agent_db_status_public/tables/org_achievements/columns/created_at/alterations/alt0000000519
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_status_public/schema
-- requires: schemas/agent_db_status_public/tables/org_achievements/table
-- requires: schemas/agent_db_status_public/tables/org_achievements/columns/created_at/column


ALTER TABLE agent_db_status_public.org_achievements 
  ALTER COLUMN created_at SET DEFAULT now();

