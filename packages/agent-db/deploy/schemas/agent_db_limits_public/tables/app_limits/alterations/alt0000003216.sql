-- Deploy: schemas/agent_db_limits_public/tables/app_limits/alterations/alt0000003216
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_limits_public/schema
-- requires: schemas/agent_db_limits_public/tables/app_limits/table


COMMENT ON TABLE "agent_db_limits_public".app_limits IS E'Tracks per-actor usage counts against configurable maximum limits';

