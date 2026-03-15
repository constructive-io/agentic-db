-- Revert: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_grants/constraints/org_grants_entity_id_fkey/constraint


ALTER TABLE "agent-os-1773546821914-39f1cb9b-memberships-public".org_grants 
  DROP CONSTRAINT org_grants_entity_id_fkey;


