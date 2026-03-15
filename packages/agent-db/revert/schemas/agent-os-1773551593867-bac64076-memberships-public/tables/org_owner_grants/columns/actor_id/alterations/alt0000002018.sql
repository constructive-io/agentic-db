-- Revert: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_owner_grants/columns/actor_id/alterations/alt0000002018


ALTER TABLE "agent-os-1773551593867-bac64076-memberships-public".org_owner_grants 
  ALTER COLUMN actor_id DROP NOT NULL;


