-- Deploy: schemas/agent_db_status_public/tables/org_levels/columns/name/alterations/alt0000000525
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_status_public/schema
-- requires: schemas/agent_db_status_public/tables/org_levels/table
-- requires: schemas/agent_db_status_public/tables/org_levels/columns/name/column


ALTER TABLE agent_db_status_public.org_levels 
  ALTER COLUMN name SET NOT NULL;

