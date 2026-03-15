-- Deploy: schemas/agent_db_status_public/tables/app_steps/columns/created_at/alterations/alt0000003343
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_status_public/schema
-- requires: schemas/agent_db_status_public/tables/app_steps/table
-- requires: schemas/agent_db_status_public/tables/app_steps/columns/created_at/column


ALTER TABLE "agent_db_status_public".app_steps 
  ALTER COLUMN created_at SET DEFAULT now();

