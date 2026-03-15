-- Revert: schemas/agent_db_limits_public/tables/org_limits/columns/id/alterations/alt0000002000


ALTER TABLE "agent_db_limits_public".org_limits 
  ALTER COLUMN id DROP NOT NULL;


