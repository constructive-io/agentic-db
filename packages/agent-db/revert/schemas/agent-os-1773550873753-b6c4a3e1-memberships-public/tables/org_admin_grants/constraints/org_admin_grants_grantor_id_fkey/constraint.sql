-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/org_admin_grants/constraints/org_admin_grants_grantor_id_fkey/constraint


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-memberships-public".org_admin_grants 
  DROP CONSTRAINT org_admin_grants_grantor_id_fkey;


