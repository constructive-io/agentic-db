-- Deploy: schemas/agent_db_limits_public/tables/app_limits/alterations/alt0000000898
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_limits_public/schema
-- requires: schemas/agent_db_limits_public/tables/app_limits/table


COMMENT ON TABLE "agent_db_limits_public".app_limits IS E'Tracks per-actor usage counts against configurable maximum limits';

