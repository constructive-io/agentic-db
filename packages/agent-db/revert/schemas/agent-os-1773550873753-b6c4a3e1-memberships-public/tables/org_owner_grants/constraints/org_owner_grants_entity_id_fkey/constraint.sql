-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/org_owner_grants/constraints/org_owner_grants_entity_id_fkey/constraint


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-memberships-public".org_owner_grants 
  DROP CONSTRAINT org_owner_grants_entity_id_fkey;


