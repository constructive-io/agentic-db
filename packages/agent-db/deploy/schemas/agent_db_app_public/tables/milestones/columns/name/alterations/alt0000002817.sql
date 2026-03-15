-- Deploy: schemas/agent_db_app_public/tables/milestones/columns/name/alterations/alt0000002817
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/milestones/table
-- requires: schemas/agent_db_app_public/tables/milestones/columns/name/column
-- requires: schemas/agent_db_app_public/tables/milestones/columns/updated_at/alterations/alt0000002816


ALTER TABLE "agent_db_app_public".milestones 
  ALTER COLUMN name SET NOT NULL;

