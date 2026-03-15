-- Deploy: schemas/agent_db_limits_public/tables/org_limits/alterations/alt0000003513
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_limits_public/schema
-- requires: schemas/agent_db_limits_public/tables/org_limits/table


COMMENT ON TABLE "agent_db_limits_public".org_limits IS E'Tracks per-actor usage counts against configurable maximum limits';

