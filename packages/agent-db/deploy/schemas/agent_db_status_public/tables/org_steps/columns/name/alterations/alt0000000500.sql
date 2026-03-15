-- Deploy: schemas/agent_db_status_public/tables/org_steps/columns/name/alterations/alt0000000500
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_status_public/schema
-- requires: schemas/agent_db_status_public/tables/org_steps/columns/name/column


COMMENT ON COLUMN agent_db_status_public.org_steps.name IS 'Name identifier of the level requirement this step fulfills';

