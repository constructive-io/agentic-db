-- Deploy: schemas/agent_db_status_public/tables/org_achievements/columns/entity_id/alterations/alt0000000518
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_status_public/schema
-- requires: schemas/agent_db_status_public/tables/org_achievements/table
-- requires: schemas/agent_db_status_public/tables/org_achievements/columns/entity_id/column


ALTER TABLE agent_db_status_public.org_achievements 
  ALTER COLUMN entity_id SET NOT NULL;

