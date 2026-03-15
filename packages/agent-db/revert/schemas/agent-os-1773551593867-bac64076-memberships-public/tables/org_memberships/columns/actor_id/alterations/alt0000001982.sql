-- Revert: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_memberships/columns/actor_id/alterations/alt0000001982


ALTER TABLE "agent-os-1773551593867-bac64076-memberships-public".org_memberships 
  ALTER COLUMN actor_id DROP NOT NULL;


