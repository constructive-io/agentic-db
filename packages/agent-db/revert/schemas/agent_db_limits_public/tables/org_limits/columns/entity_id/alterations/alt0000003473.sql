-- Revert: schemas/agent_db_limits_public/tables/org_limits/columns/entity_id/alterations/alt0000003473


ALTER TABLE "agent_db_limits_public".org_limits 
  ALTER COLUMN entity_id DROP NOT NULL;


