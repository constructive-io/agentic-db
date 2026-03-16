-- Revert: schemas/agent_db_memberships_public/tables/org_grants/constraints/org_grants_grantor_id_fkey/constraint


ALTER TABLE "agent_db_memberships_public".org_grants 
  DROP CONSTRAINT org_grants_grantor_id_fkey;


