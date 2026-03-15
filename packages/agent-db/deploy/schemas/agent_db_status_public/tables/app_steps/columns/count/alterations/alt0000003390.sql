-- Deploy: schemas/agent_db_status_public/tables/app_steps/columns/count/alterations/alt0000003390
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_status_public/schema
-- requires: schemas/agent_db_status_public/tables/app_steps/columns/count/column


COMMENT ON COLUMN "agent_db_status_public".app_steps.count IS 'Number of units completed in this step action';

