-- Deploy: schemas/agent_db_limits_public/tables/org_limits/columns/entity_id/alterations/alt0000003473
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_limits_public/schema
-- requires: schemas/agent_db_limits_public/tables/org_limits/table
-- requires: schemas/agent_db_limits_public/tables/org_limits/columns/entity_id/column


ALTER TABLE "agent_db_limits_public".org_limits 
  ALTER COLUMN entity_id SET NOT NULL;

