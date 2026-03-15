-- Deploy: schemas/agent_db_status_public/tables/app_levels/columns/name/alterations/alt0000000192
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_status_public/schema
-- requires: schemas/agent_db_status_public/tables/app_levels/table
-- requires: schemas/agent_db_status_public/tables/app_levels/columns/name/column


ALTER TABLE agent_db_status_public.app_levels 
  ALTER COLUMN name SET NOT NULL;

