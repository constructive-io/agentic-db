-- Revert: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/app_grants/columns/actor_id/alterations/alt0000001765


ALTER TABLE "agent-os-1773551593867-bac64076-memberships-public".app_grants 
  ALTER COLUMN actor_id DROP NOT NULL;


