-- Deploy: schemas/agent_db_status_public/tables/app_steps/alterations/alt0000003333
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_status_public/schema
-- requires: schemas/agent_db_status_public/tables/app_steps/table


COMMENT ON TABLE "agent_db_status_public".app_steps IS E'Log of individual user actions toward level requirements; every single step ever taken is recorded here';

