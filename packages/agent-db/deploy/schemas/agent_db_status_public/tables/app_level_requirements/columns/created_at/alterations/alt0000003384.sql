-- Deploy: schemas/agent_db_status_public/tables/app_level_requirements/columns/created_at/alterations/alt0000003384
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_status_public/schema
-- requires: schemas/agent_db_status_public/tables/app_level_requirements/table
-- requires: schemas/agent_db_status_public/tables/app_level_requirements/columns/created_at/column


ALTER TABLE "agent_db_status_public".app_level_requirements 
  ALTER COLUMN created_at SET DEFAULT now();

