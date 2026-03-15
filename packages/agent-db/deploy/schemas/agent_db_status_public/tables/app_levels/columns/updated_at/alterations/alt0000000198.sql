-- Deploy: schemas/agent_db_status_public/tables/app_levels/columns/updated_at/alterations/alt0000000198
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_status_public/schema
-- requires: schemas/agent_db_status_public/tables/app_levels/table
-- requires: schemas/agent_db_status_public/tables/app_levels/columns/updated_at/column


ALTER TABLE agent_db_status_public.app_levels 
  ALTER COLUMN updated_at SET DEFAULT now();

