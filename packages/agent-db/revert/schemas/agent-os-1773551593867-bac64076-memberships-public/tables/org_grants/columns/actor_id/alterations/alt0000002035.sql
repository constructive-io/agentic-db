-- Revert: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_grants/columns/actor_id/alterations/alt0000002035


ALTER TABLE "agent-os-1773551593867-bac64076-memberships-public".org_grants 
  ALTER COLUMN actor_id DROP NOT NULL;


