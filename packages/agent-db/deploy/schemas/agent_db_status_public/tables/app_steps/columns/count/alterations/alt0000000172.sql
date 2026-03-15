-- Deploy: schemas/agent_db_status_public/tables/app_steps/columns/count/alterations/alt0000000172
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_status_public/schema
-- requires: schemas/agent_db_status_public/tables/app_steps/columns/count/column


COMMENT ON COLUMN agent_db_status_public.app_steps.count IS 'Number of units completed in this step action';

