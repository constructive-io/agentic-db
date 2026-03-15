-- Deploy: schemas/agent_db_status_public/tables/app_steps/columns/name/alterations/alt0000003339
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_status_public/schema
-- requires: schemas/agent_db_status_public/tables/app_steps/columns/name/column


COMMENT ON COLUMN "agent_db_status_public".app_steps.name IS 'Name identifier of the level requirement this step fulfills';

