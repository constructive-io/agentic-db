-- Deploy: schemas/agent_db_status_public/tables/app_levels/columns/created_at/alterations/alt0000001049
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_status_public/schema
-- requires: schemas/agent_db_status_public/tables/app_levels/table
-- requires: schemas/agent_db_status_public/tables/app_levels/columns/created_at/column


ALTER TABLE "agent_db_status_public".app_levels 
  ALTER COLUMN created_at SET DEFAULT now();

