-- Deploy: schemas/agent_db_status_public/tables/org_steps/columns/count/alterations/alt0000000503
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_status_public/schema
-- requires: schemas/agent_db_status_public/tables/org_steps/columns/count/column


COMMENT ON COLUMN agent_db_status_public.org_steps.count IS 'Number of units completed in this step action';

