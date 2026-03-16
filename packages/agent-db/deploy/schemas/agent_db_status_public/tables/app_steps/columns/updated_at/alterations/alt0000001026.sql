-- Deploy: schemas/agent_db_status_public/tables/app_steps/columns/updated_at/alterations/alt0000001026
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_status_public/schema
-- requires: schemas/agent_db_status_public/tables/app_steps/table
-- requires: schemas/agent_db_status_public/tables/app_steps/columns/updated_at/column


ALTER TABLE "agent_db_status_public".app_steps 
  ALTER COLUMN updated_at SET DEFAULT now();

