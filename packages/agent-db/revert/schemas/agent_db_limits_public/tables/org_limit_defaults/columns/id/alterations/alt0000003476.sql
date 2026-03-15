-- Revert: schemas/agent_db_limits_public/tables/org_limit_defaults/columns/id/alterations/alt0000003476


ALTER TABLE "agent_db_limits_public".org_limit_defaults 
  ALTER COLUMN id DROP NOT NULL;


