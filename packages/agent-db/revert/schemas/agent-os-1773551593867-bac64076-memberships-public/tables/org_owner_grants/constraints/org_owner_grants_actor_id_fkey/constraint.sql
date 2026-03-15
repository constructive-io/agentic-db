-- Revert: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_owner_grants/constraints/org_owner_grants_actor_id_fkey/constraint


ALTER TABLE "agent-os-1773551593867-bac64076-memberships-public".org_owner_grants 
  DROP CONSTRAINT org_owner_grants_actor_id_fkey;


